"""Run one owned search tree; clean its descendants before returning.

Windows uses a private Job Object, assigned while the root is suspended, so
even an early root exit cannot orphan workers. No process-name/PID-tree scan is
used. POSIX owns a new session/process group. Standard streams are inherited.
"""
from contextlib import ExitStack
import os
import signal
import subprocess
import time


def run_in_process_tree(command, timeout):
    """Like run(command, timeout=...), with descendant cleanup on every exit."""
    if os.name == 'nt':
        return _run_windows(command, timeout)
    with subprocess.Popen(command, start_new_session=True) as process:
        try:
            return subprocess.CompletedProcess(command, process.wait(timeout=timeout))
        finally:
            try:
                os.killpg(process.pid, signal.SIGKILL)
            except ProcessLookupError:
                pass
            process.wait()


def _wait_windows(process, command, timeout):
    import _winapi
    deadline = time.monotonic() + timeout
    while True:
        remaining = deadline - time.monotonic()
        # A short wait keeps Python's KeyboardInterrupt handling responsive.
        result = _winapi.WaitForSingleObject(process, max(0, min(50, int(remaining * 1000))))
        if result == _winapi.WAIT_OBJECT_0:
            return _winapi.GetExitCodeProcess(process)
        if result != _winapi.WAIT_TIMEOUT:
            raise RuntimeError('unexpected process wait result: %s' % result)
        if remaining <= 0:
            raise subprocess.TimeoutExpired(command, timeout)


def _run_windows(command, timeout):
    import ctypes
    from ctypes import wintypes
    import _winapi
    import msvcrt

    class BasicLimits(ctypes.Structure):
        _fields_ = [('process_time', ctypes.c_longlong), ('job_time', ctypes.c_longlong),
                    ('flags', wintypes.DWORD), ('min_working_set', ctypes.c_size_t),
                    ('max_working_set', ctypes.c_size_t), ('process_limit', wintypes.DWORD),
                    ('affinity', ctypes.c_size_t), ('priority', wintypes.DWORD),
                    ('scheduling', wintypes.DWORD)]

    class IoCounters(ctypes.Structure):
        _fields_ = [(name, ctypes.c_ulonglong) for name in
                    ('read_ops', 'write_ops', 'other_ops', 'read_bytes', 'write_bytes', 'other_bytes')]

    class ExtendedLimits(ctypes.Structure):
        _fields_ = [('basic', BasicLimits), ('io', IoCounters),
                    ('process_memory', ctypes.c_size_t), ('job_memory', ctypes.c_size_t),
                    ('peak_process_memory', ctypes.c_size_t), ('peak_job_memory', ctypes.c_size_t)]

    class Accounting(ctypes.Structure):
        _fields_ = [('user_time', ctypes.c_longlong), ('kernel_time', ctypes.c_longlong),
                    ('period_user_time', ctypes.c_longlong), ('period_kernel_time', ctypes.c_longlong),
                    ('page_faults', wintypes.DWORD), ('total_processes', wintypes.DWORD),
                    ('active_processes', wintypes.DWORD), ('terminated_processes', wintypes.DWORD)]

    api = ctypes.WinDLL('kernel32', use_last_error=True)
    signatures = {
        'CreateJobObjectW': ([ctypes.c_void_p, wintypes.LPCWSTR], wintypes.HANDLE),
        'SetInformationJobObject': ([wintypes.HANDLE, ctypes.c_int, ctypes.c_void_p, wintypes.DWORD], wintypes.BOOL),
        'AssignProcessToJobObject': ([wintypes.HANDLE, wintypes.HANDLE], wintypes.BOOL),
        'ResumeThread': ([wintypes.HANDLE], wintypes.DWORD),
        'TerminateJobObject': ([wintypes.HANDLE, wintypes.UINT], wintypes.BOOL),
        'QueryInformationJobObject': ([wintypes.HANDLE, ctypes.c_int, ctypes.c_void_p,
                                      wintypes.DWORD, ctypes.c_void_p], wintypes.BOOL),
    }
    for name, (args, result) in signatures.items():
        function = getattr(api, name)
        function.argtypes = args
        function.restype = result

    def checked(ok):
        if not ok:
            raise ctypes.WinError(ctypes.get_last_error())

    def terminate_job(job):
        checked(api.TerminateJobObject(job, 1))
        deadline = time.monotonic() + 5
        while True:
            accounting = Accounting()
            checked(api.QueryInformationJobObject(job, 1, ctypes.byref(accounting),
                                                  ctypes.sizeof(accounting), None))
            if not accounting.active_processes:
                return
            if time.monotonic() >= deadline:
                raise RuntimeError('owned process tree did not terminate within 5 seconds')
            time.sleep(.01)

    with ExitStack() as handles:
        job = api.CreateJobObjectW(None, None)
        checked(job)
        handles.callback(_winapi.CloseHandle, job)
        limits = ExtendedLimits()
        limits.basic.flags = 0x2000  # JOB_OBJECT_LIMIT_KILL_ON_JOB_CLOSE
        checked(api.SetInformationJobObject(job, 9, ctypes.byref(limits), ctypes.sizeof(limits)))

        startup = subprocess.STARTUPINFO()
        startup.dwFlags |= _winapi.STARTF_USESTDHANDLES
        standard = []
        for name, selector in [('hStdInput', _winapi.STD_INPUT_HANDLE),
                               ('hStdOutput', _winapi.STD_OUTPUT_HANDLE),
                               ('hStdError', _winapi.STD_ERROR_HANDLE)]:
            source = _winapi.GetStdHandle(selector)
            if source in (None, 0, -1):
                fd = os.open(os.devnull, os.O_RDWR)
                handles.callback(os.close, fd)
                source = msvcrt.get_osfhandle(fd)
            duplicate = _winapi.DuplicateHandle(_winapi.GetCurrentProcess(), source,
                                               _winapi.GetCurrentProcess(), 0, True,
                                               _winapi.DUPLICATE_SAME_ACCESS)
            handles.callback(_winapi.CloseHandle, duplicate)
            standard.append(duplicate)
            setattr(startup, name, duplicate)
        # Inherit exactly the duplicated standard streams, never the job handle.
        startup.lpAttributeList = {'handle_list': standard}
        process = thread = None
        assigned = False
        try:
            process, thread, _, _ = _winapi.CreateProcess(
                os.fsdecode(command[0]), subprocess.list2cmdline(command), None, None, True,
                0x4 | subprocess.CREATE_NO_WINDOW, None, None, startup)  # CREATE_SUSPENDED
            checked(api.AssignProcessToJobObject(job, process))
            assigned = True
            if api.ResumeThread(thread) == 0xFFFFFFFF:
                raise ctypes.WinError(ctypes.get_last_error())
            return subprocess.CompletedProcess(command, _wait_windows(process, command, timeout))
        finally:
            if process is not None:
                try:
                    if assigned:
                        terminate_job(job)
                    else:
                        # Containment failed: the owned root is still suspended,
                        # without descendants. Terminate its retained handle.
                        _winapi.TerminateProcess(process, 1)
                        if _winapi.WaitForSingleObject(process, 5000) != _winapi.WAIT_OBJECT_0:
                            raise RuntimeError('uncontained suspended root did not terminate')
                finally:
                    _winapi.CloseHandle(thread)
                    _winapi.CloseHandle(process)
