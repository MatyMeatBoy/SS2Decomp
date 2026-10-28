"""Transactional application of C definitions exporting canonical asm aliases."""
from pathlib import Path
import subprocess
import tempfile

import decomp
from source_index import canonical_bindings


def targets(text):
    from revalidate import registry
    root = Path(decomp.ROOT)
    known, _ = registry(root)
    headers = '\n'.join(path.read_text(encoding='utf8') for path in sorted((root / 'include').rglob('*.h')))
    return canonical_bindings(text, known, headers)


def c_name(text, canonical):
    names = [name for name, target in targets(text).items() if target == canonical]
    if len(names) != 1:
        raise ValueError('candidate must define exactly one export of ' + canonical)
    return names[0]


def apply_alias(canonical, text, module=None, validate_rom=None):
    """Preserve local declarations and headers; verify the provisional whole module.

    The caller's optional ROM gate runs after removal of the now-unused ASM file.
    Any rejection/exception restores exact file bytes, including CRLF sources.
    """
    import handapply
    from revalidate import registry, audit_module
    root = Path(decomp.ROOT)
    name = c_name(text, canonical)
    if name == canonical:
        raise ValueError('alias path requires a distinct C identifier')
    asm, owner = decomp.find_asm(canonical)
    if asm is None or (module is not None and owner != module):
        raise ValueError('missing ASM or incorrect module for ' + canonical)
    source = root / 'src' / (owner + '.c')
    files = [source, Path(asm)] + list((root / 'include').rglob('*.h'))
    original = {path: path.read_bytes() for path in files}
    updated = handapply.prepare(source.read_text(encoding='utf8'), text, canonical, name)
    try:
        source.write_text(updated, encoding='utf8', newline='\n')
        (root / 'build').mkdir(exist_ok=True)
        known, _ = registry(root)
        _, records = audit_module(root, owner, known, {(owner, canonical)})
        if len(records) != 1 or not records[0][2]:
            raise ValueError('whole-module candidate does not match ' + canonical)
        # The other conditional mode must also compile before deleting the ASM.
        with tempfile.TemporaryDirectory(prefix='apply-alias-nm-', dir=root / 'build') as temporary:
            build = Path(temporary).relative_to(root).as_posix()
            result = subprocess.run(['make', '-s', '-B', '-j1', 'BUILD=' + build,
                                     'NM_FLAGS=-DNONMATCHING', build + '/src/' + owner + '.o'],
                                    cwd=root, capture_output=True, text=True)
            if result.returncode:
                raise ValueError('NONMATCHING module build failed:\n' + result.stdout + result.stderr)
        Path(asm).unlink()
        if validate_rom is not None and not validate_rom():
            raise ValueError('matched module but ROM validation failed')
    except BaseException:
        for path, data in original.items():
            path.write_bytes(data)
        raise
    print('applied %s (%s) -> src/%s.c' % (canonical, name, owner))
    return True
