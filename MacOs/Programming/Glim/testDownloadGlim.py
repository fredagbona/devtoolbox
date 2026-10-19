"""Offline contract tests; no application installation or real network requests."""
import hashlib
import os
from pathlib import Path
import subprocess
import tempfile
import unittest

SCRIPT = Path(__file__).with_name('installGlim.sh')
PAYLOAD = b'fixture disk image\n'


class DownloadTests(unittest.TestCase):
    def run_case(self, arch='arm64', translated='0', platform='Darwin',
                 corrupt=False, existing=None, wrong_name=False,
                 no_hardlinks=False, race_before_move=False):
        with tempfile.TemporaryDirectory(prefix='glim-test-') as tmp:
            root = Path(tmp)
            bins = root / 'bin'
            bins.mkdir()
            output = root / 'downloads with spaces'
            output.mkdir()
            selected = 'arm64' if translated == '1' else arch
            asset = f'Glim-0.2.3-macos-{selected}.dmg'
            destination = output / asset
            if existing is not None:
                destination.write_bytes(existing)
            fixtures = {
                'uname': '#!/bin/bash\nif [[ "$1" == -s ]]; then echo "$GLIM_TEST_PLATFORM"; else echo "$GLIM_TEST_ARCH"; fi\n',
                'sysctl': '#!/bin/bash\necho "$GLIM_TEST_TRANSLATED"\n',
                'ln': '#!/bin/bash\n[[ "$GLIM_TEST_NO_HARDLINKS" == 1 ]] && exit 1\nexec /bin/ln "$@"\n',
                'mv': '''#!/usr/bin/env python3
import os, subprocess, sys
from pathlib import Path
if os.environ['GLIM_TEST_MOVE_RACE'] == '1':
    Path(os.environ['GLIM_TEST_DESTINATION']).write_bytes(b'raced copy')
sys.exit(subprocess.run(['/bin/mv', *sys.argv[1:]]).returncode)
''',
                'curl': '''#!/usr/bin/env python3
import os, sys
from pathlib import Path
args = sys.argv[1:]
if not args or args[0] != '-q':
    raise SystemExit('curl must disable its config before other options')
url = args[-1]
with open(os.environ['GLIM_TEST_LOG'], 'a') as log:
    log.write(url + '\\n')
if '--write-out' in args:
    print('https://github.com/NeoPanic/Glim/releases/tag/v0.2.3', end='')
else:
    dest = Path(args[args.index('--output') + 1])
    if url.endswith('.sha256'):
        name = 'wrong.dmg' if os.environ['GLIM_TEST_WRONG_NAME'] == '1' else url.rsplit('/', 1)[-1][:-7]
        dest.write_text(os.environ['GLIM_TEST_HASH'] + '  ' + name + '\\n')
    else:
        dest.write_bytes(b'corrupt' if os.environ['GLIM_TEST_CORRUPT'] == '1' else b'fixture disk image\\n')
''',
            }
            for name, content in fixtures.items():
                path = bins / name
                path.write_text(content)
                path.chmod(0o755)
            log = root / 'requests'
            env = dict(os.environ, PATH=str(bins) + os.pathsep + os.environ['PATH'],
                       GLIM_TEST_PLATFORM=platform, GLIM_TEST_ARCH=arch,
                       GLIM_TEST_TRANSLATED=translated, GLIM_TEST_LOG=str(log),
                       GLIM_TEST_HASH=hashlib.sha256(PAYLOAD).hexdigest(),
                       GLIM_TEST_WRONG_NAME=str(int(wrong_name)),
                       GLIM_TEST_NO_HARDLINKS=str(int(no_hardlinks)),
                       GLIM_TEST_MOVE_RACE=str(int(race_before_move)),
                       GLIM_TEST_DESTINATION=str(destination),
                       GLIM_TEST_CORRUPT=str(int(corrupt)))
            result = subprocess.run(['bash', str(SCRIPT), '--output-dir', str(output)],
                                    env=env, capture_output=True, text=True)
            data = destination.read_bytes() if destination.exists() else None
            requests = log.read_text().splitlines() if log.exists() else []
            self.assertEqual(list(output.glob('.glim-download.*')), [])
            return result, data, requests

    def test_apple_silicon(self):
        result, data, urls = self.run_case()
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertEqual(data, PAYLOAD)
        self.assertTrue(urls[-1].endswith('macos-arm64.dmg'))

    def test_intel(self):
        result, data, urls = self.run_case(arch='x86_64')
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertEqual(data, PAYLOAD)
        self.assertTrue(urls[-1].endswith('macos-x86_64.dmg'))

    def test_rosetta(self):
        result, _, urls = self.run_case(arch='x86_64', translated='1')
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertTrue(urls[-1].endswith('macos-arm64.dmg'))

    def test_corruption_not_published(self):
        result, data, _ = self.run_case(corrupt=True)
        self.assertNotEqual(result.returncode, 0)
        self.assertIsNone(data)
        self.assertIn('SHA-256 verification', result.stderr)

    def test_existing_good_reused(self):
        result, data, urls = self.run_case(existing=PAYLOAD)
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertEqual(data, PAYLOAD)
        self.assertEqual(len(urls), 2)

    def test_existing_bad_preserved(self):
        result, data, urls = self.run_case(existing=b'keep me')
        self.assertNotEqual(result.returncode, 0)
        self.assertEqual(data, b'keep me')
        self.assertEqual(len(urls), 2)

    def test_wrong_checksum_filename(self):
        result, data, urls = self.run_case(wrong_name=True)
        self.assertNotEqual(result.returncode, 0)
        self.assertIsNone(data)
        self.assertEqual(len(urls), 2)

    def test_other_platform(self):
        result, data, urls = self.run_case(platform='Linux')
        self.assertNotEqual(result.returncode, 0)
        self.assertIsNone(data)
        self.assertEqual(urls, [])

    def test_volume_without_hardlinks(self):
        result, data, _ = self.run_case(no_hardlinks=True)
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertEqual(data, PAYLOAD)

    def test_move_fallback_preserves_raced_file(self):
        result, data, _ = self.run_case(no_hardlinks=True, race_before_move=True)
        self.assertNotEqual(result.returncode, 0)
        self.assertEqual(data, b'raced copy')


if __name__ == '__main__':
    unittest.main()
