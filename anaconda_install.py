#!/usr/bin/env python

import os

TARGET = '/opt/anaconda'
SYS_ENV = '/etc/environment'

# Install anaconda to TARGET if it isn't there
if not os.path.isdir(TARGET):
    os.system('{} {} {}'.format(
        './anaconda_expect.exp', 
        './Anaconda-2.2.0-Linux-x86_64.sh',
        TARGET))

# add anaconda to the global path
with open(SYS_ENV) as sys_env:
    path = ''
    not_path_lines = []
    for line in sys_env:
        if line[:4] == 'PATH':
            path = '='.join(line.split('=')[1:]).strip().strip('"')
        else:
            not_path_lines.append(line.strip())

if TARGET not in path:
    path = '{}/bin:{}'.format(TARGET, path)
    os.system('cp {0} {0}.bak'.format(SYS_ENV))
    with open(SYS_ENV, 'w') as sys_env:
        sys_env.write('\n'.join(not_path_lines + ['']))
        sys_env.write('PATH="{}"\n'.format(path))

os.system('yes | conda install csvkit')
