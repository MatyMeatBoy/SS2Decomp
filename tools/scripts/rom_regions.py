#!/usr/bin/env python3
"""Identify locally supplied ROMs without distributing their contents."""
import argparse
import hashlib
import json
from pathlib import Path

ROOT = Path(__file__).resolve().parents[2]
PROFILES = ROOT / 'tools/config/rom_regions.json'


class RegionError(ValueError):
    pass


def load_profiles(path=PROFILES):
    data = json.loads(Path(path).read_text(encoding='utf-8'))
    if data.get('schema_version') != 1:
        raise RegionError('Unsupported ROM profile schema')
    return data['regions']


def verify_rom(path, region, profiles=None):
    profiles = load_profiles() if profiles is None else profiles
    if region not in profiles:
        raise RegionError('Unknown region: %s' % region)
    profile = profiles[region]
    path = Path(path)
    size = path.stat().st_size
    if size != profile['size'] or size < 0xC0:
        raise RegionError('%s ROM size mismatch: expected %s, got %s' %
                          (region, profile['size'], size))
    data = path.read_bytes()
    game_code = data[0xAC:0xB0].decode('ascii', errors='replace')
    if game_code != profile['game_code']:
        raise RegionError('%s game code mismatch: expected %s, got %s' %
                          (region, profile['game_code'], game_code))
    if data[0xBC] != profile['revision']:
        raise RegionError('%s ROM revision mismatch' % region)
    sha1 = hashlib.sha1(data).hexdigest()
    sha256 = hashlib.sha256(data).hexdigest()
    if sha1 != profile['sha1'] or sha256 != profile['sha256']:
        raise RegionError('%s ROM hash mismatch; this profile requires the exact supplied dump' % region)
    return {'region': region, 'name': profile['name'], 'path': str(path.resolve()),
            'size': size, 'title': data[0xA0:0xAC].decode('ascii', errors='replace').rstrip('\x00'),
            'game_code': game_code, 'revision': data[0xBC], 'sha1': sha1, 'sha256': sha256}


def main(argv=None):
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('rom', type=Path)
    parser.add_argument('--region', required=True, choices=tuple(load_profiles()))
    args = parser.parse_args(argv)
    try:
        print(json.dumps(verify_rom(args.rom, args.region), indent=2))
    except (RegionError, OSError) as exc:
        parser.exit(1, '%s\n' % exc)


if __name__ == '__main__':
    main()
