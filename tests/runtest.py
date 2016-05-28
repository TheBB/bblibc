#!/usr/bin/env python3

import sys
from os import getcwd, listdir
from os.path import join
from yaml import load
from subprocess import run, PIPE

_, executable, path = sys.argv
executable = './{}'.format(executable)

for test in listdir(path):
    if not test.endswith('.yaml'):
        continue
    with open(join(path, test)) as f:
        data = load(f)
    cmd = [s.format(bin=executable) for s in data['cmd']]

    res = run(cmd, stdout=PIPE, stderr=PIPE)
    if 'ret' in data:
        assert res.returncode == data['ret']
    if 'stdout' in data:
        if not data['stdout'].endswith('\n'):
            data['stdout'] += '\n'
        assert res.stdout.decode() == data['stdout']
