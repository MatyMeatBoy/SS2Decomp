"""Real owned process trees must not outlive a bounded permuter search."""
import contextlib
import ctypes
import io
import json
import os
from pathlib import Path
import subprocess
import sys
import tempfile
import time
import unittest
from unittest import mock

sys.path.insert(0, str(Path(__file__).resolve().parents[1] / 'scripts'))
import permute
import process_tree


FIXTURE = '''from pathlib import Path
import os, subprocess, sys, time
folder = Path(sys.argv[1])
role = sys.argv[2] if len(sys.argv) > 2 and sys.argv[2] in ('child', 'grandchild', 'unrelated') else 'root'
(folder / ('pid-' + role)).write_text(str(os.getpid()))
if role in ('root', 'child'):
    next_role = 'child' if role == 'root' else 'grandchild'
    subprocess.Popen([sys.executable, __file__, str(folder), next_role])
deadline = time.monotonic() + 15
while not (folder / 'pid-grandchild').exists() and time.monotonic() < deadline:
    time.sleep(.01)
if role == 'root':
    mode = (folder / 'mode').read_text()
    if mode == 'normal': sys.exit(0)
    if mode == 'failure': sys.exit(7)
while not (folder / 'release').exists() and time.monotonic() < deadline:
    time.sleep(.01)
'''


def running(pid):
    """Observe an owned fixture PID; never terminate a process by PID."""
    if os.name == 'nt':
        api = ctypes.WinDLL('kernel32', use_last_error=True)
        api.OpenProcess.argtypes = [ctypes.c_ulong, ctypes.c_int, ctypes.c_ulong]
        api.OpenProcess.restype = ctypes.c_void_p
        api.WaitForSingleObject.argtypes = [ctypes.c_void_p, ctypes.c_ulong]
        api.CloseHandle.argtypes = [ctypes.c_void_p]
        handle = api.OpenProcess(0x100000, False, pid)
        if not handle:
            return False
        try:
            return api.WaitForSingleObject(handle, 0) == 0x102
        finally:
            api.CloseHandle(handle)
    try:
        stat = Path('/proc/%s/stat' % pid)
        if stat.exists() and stat.read_text().split(') ', 1)[1].startswith('Z'):
            return False
        os.kill(pid, 0)
        return True
    except ProcessLookupError:
        return False


def eventually(predicate, seconds=2):
    deadline = time.monotonic() + seconds
    while time.monotonic() < deadline:
        if predicate():
            return True
        time.sleep(.02)
    return predicate()


class PermuterProcessTreeTests(unittest.TestCase):
    def run_fixture(self, mode):
        with tempfile.TemporaryDirectory(prefix='permuter tree \u00f1-') as td:
            root = Path(td)
            (root / 'permuter.py').write_text(FIXTURE)
            (root / 'mode').write_text(mode)
            unrelated = subprocess.Popen([sys.executable, str(root / 'permuter.py'), td, 'unrelated'])
            try:
                with mock.patch.object(sys, 'argv', ['permute.py', 'target', 'input.c',
                                                    '--dir', td, '--out', str(root / 'out'),
                                                    '--time', '2']), \
                     mock.patch.object(permute, 'PERMUTER', td), \
                     mock.patch.object(permute, 'setup', return_value=[]), \
                     mock.patch.object(permute, 'validate_control'), \
                     contextlib.redirect_stdout(io.StringIO()):
                    if mode == 'interrupted':
                        def interrupt(*args):
                            self.assertTrue(eventually(lambda: (root / 'pid-grandchild').exists(), 5))
                            raise KeyboardInterrupt
                        with mock.patch.object(process_tree, '_wait_windows', side_effect=interrupt), \
                             self.assertRaises(KeyboardInterrupt):
                            permute.main()
                    elif mode == 'failure':
                        with self.assertRaisesRegex(SystemExit, 'exit 7'):
                            permute.main()
                    else:
                        permute.main()
                for role in ('child', 'grandchild'):
                    path = root / ('pid-' + role)
                    self.assertTrue(path.exists(), 'fixture did not start ' + role)
                    pid = int(path.read_text())
                    self.assertTrue(eventually(lambda: not running(pid)),
                                    '%s owned descendant still running: %d' % (role, pid))
                self.assertIsNone(unrelated.poll(), 'unrelated sibling must stay alive')
            finally:
                # Even the RED implementation leaves only short-lived fixture
                # processes. A private release file ends them without PID kills.
                (root / 'release').touch()
                unrelated.wait(timeout=5)
                for role in ('root', 'child', 'grandchild'):
                    path = root / ('pid-' + role)
                    if path.exists():
                        pid = int(path.read_text())
                        self.assertTrue(eventually(lambda: not running(pid), 5),
                                        'fixture failed to release ' + role)

    def test_timeout_reaps_owned_children_and_preserves_unrelated_sibling(self):
        self.run_fixture('timeout')

    def test_normal_exit_reaps_leftover_owned_children(self):
        self.run_fixture('normal')

    def test_failure_reaps_owned_children_and_remains_an_error(self):
        self.run_fixture('failure')

    @unittest.skipUnless(os.name == 'nt', 'Windows wait boundary')
    def test_interrupt_reaps_owned_children(self):
        self.run_fixture('interrupted')

    def test_inherits_standard_streams_and_preserves_quoted_arguments(self):
        with tempfile.TemporaryDirectory(prefix='permuter streams \u00f1-') as td:
            root = Path(td)
            child = root / 'child with spaces.py'
            child.write_text('import json, sys\n'
                             'print(json.dumps([sys.stdin.readline().strip()] + sys.argv[1:]))\n'
                             'print("child stderr", file=sys.stderr)\n'
                             'sys.exit(7)\n')
            driver = root / 'driver.py'
            driver.write_text('import sys\n'
                              'sys.path.insert(0, sys.argv[1])\n'
                              'from process_tree import run_in_process_tree\n'
                              'result = run_in_process_tree([sys.executable] + sys.argv[2:], 5)\n'
                              'sys.exit(result.returncode)\n')
            args = ['space path', 'quote"value', 'trailing\\', '\u00f1']
            result = subprocess.run([sys.executable, str(driver), str(Path(process_tree.__file__).parent),
                                     str(child)] + args, input='stdin line\n',
                                    capture_output=True, text=True, timeout=10)
            self.assertEqual(result.returncode, 7, result.stdout + result.stderr)
            self.assertEqual(json.loads(result.stdout), ['stdin line'] + args)
            self.assertEqual(result.stderr.strip(), 'child stderr')

    def test_timeout_reaps_spawned_multiprocessing_workers(self):
        fixture = '''from pathlib import Path
import multiprocessing, os, sys, time
def worker(folder, role):
    folder = Path(folder)
    (folder / ('pid-' + role)).write_text(str(os.getpid()))
    if role == 'child':
        multiprocessing.get_context('spawn').Process(target=worker, args=(folder, 'grandchild')).start()
    deadline = time.monotonic() + 15
    while not (folder / 'release').exists() and time.monotonic() < deadline:
        time.sleep(.01)
if __name__ == '__main__':
    worker(sys.argv[1], 'child')
'''
        with tempfile.TemporaryDirectory(prefix='permuter-multiprocessing-') as td:
            root = Path(td)
            script = root / 'workers.py'
            script.write_text(fixture)
            try:
                with self.assertRaises(subprocess.TimeoutExpired):
                    process_tree.run_in_process_tree([sys.executable, str(script), td], 2)
                for role in ('child', 'grandchild'):
                    path = root / ('pid-' + role)
                    self.assertTrue(path.exists(), 'fixture did not start ' + role)
                    self.assertTrue(eventually(lambda: not running(int(path.read_text()))))
            finally:
                (root / 'release').touch()
                for path in root.glob('pid-*'):
                    self.assertTrue(eventually(lambda: not running(int(path.read_text())), 5))

    @unittest.skipUnless(os.name == 'nt', 'Windows suspended-root containment')
    def test_assignment_failure_never_executes_the_root(self):
        import _winapi
        api = ctypes.WinDLL('kernel32', use_last_error=True)

        def refuse_assignment(*args):
            ctypes.set_last_error(5)  # ERROR_ACCESS_DENIED
            return 0

        api.AssignProcessToJobObject = refuse_assignment
        original_create = _winapi.CreateProcess
        retained = []

        def create(*args):
            result = original_create(*args)
            retained.append(_winapi.DuplicateHandle(_winapi.GetCurrentProcess(), result[0],
                                                    _winapi.GetCurrentProcess(), 0, False,
                                                    _winapi.DUPLICATE_SAME_ACCESS))
            return result

        with tempfile.TemporaryDirectory() as td:
            marker = Path(td) / 'executed'
            try:
                with mock.patch.object(ctypes, 'WinDLL', return_value=api), \
                     mock.patch.object(_winapi, 'CreateProcess', side_effect=create), \
                     self.assertRaises(OSError):
                    process_tree.run_in_process_tree([sys.executable, '-c',
                        'from pathlib import Path; Path(%r).touch()' % str(marker)], 5)
                self.assertEqual(len(retained), 1)
                self.assertEqual(_winapi.WaitForSingleObject(retained[0], 5000), _winapi.WAIT_OBJECT_0)
                self.assertFalse(marker.exists(), 'uncontained root executed before assignment')
            finally:
                for handle in retained:
                    _winapi.CloseHandle(handle)

    @unittest.skipUnless(os.name == 'nt', 'Windows kill-on-close guarantee')
    def test_abrupt_wrapper_exit_closes_private_job_and_reaps_tree(self):
        with tempfile.TemporaryDirectory(prefix='permuter-wrapper-exit-') as td:
            root = Path(td)
            fixture = root / 'permuter.py'
            fixture.write_text(FIXTURE)
            (root / 'mode').write_text('timeout')
            driver = root / 'driver.py'
            driver.write_text('import os, sys, time\nfrom pathlib import Path\n'
                              'sys.path.insert(0, sys.argv[1])\nimport process_tree\n'
                              'def exit_after_spawn(*args):\n'
                              '    deadline = time.monotonic() + 5\n'
                              '    while not (Path(sys.argv[3]) / "pid-grandchild").exists():\n'
                              '        if time.monotonic() >= deadline: os._exit(9)\n'
                              '        time.sleep(.01)\n'
                              '    os._exit(0)\n'
                              'process_tree._wait_windows = exit_after_spawn\n'
                              'process_tree.run_in_process_tree([sys.executable] + sys.argv[2:], 10)\n')
            try:
                result = subprocess.run([sys.executable, str(driver),
                                         str(Path(process_tree.__file__).parent), str(fixture), td],
                                        capture_output=True, text=True, timeout=10)
                self.assertEqual(result.returncode, 0, result.stdout + result.stderr)
                for role in ('root', 'child', 'grandchild'):
                    path = root / ('pid-' + role)
                    self.assertTrue(path.exists(), 'fixture did not start ' + role)
                    self.assertTrue(eventually(lambda: not running(int(path.read_text()))))
            finally:
                (root / 'release').touch()
                for path in root.glob('pid-*'):
                    self.assertTrue(eventually(lambda: not running(int(path.read_text())), 5))
