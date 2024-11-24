import os
from pathlib import Path
from jinja2 import Template


def init():
    '''
    Make .remote directory in current working directory.
    '''
    p = Path('./.remote')
    name = Path.cwd().name
    if p.exists():
        print(f'{name} .remote directory already exists.')
        return
    os.mkdir('./.remote')
    tmpldir = Path.home().joinpath('Projects', 'Code', 'scripts', 'templates')
    for pull in ['pull.sh', 'pull.ps1']:
        with open(tmpldir.joinpath(pull)) as src:
            with open(p.joinpath(pull), 'w') as out:
                out.write(Template(src.read()).render(src=name, dest=Path.cwd()))
    for push in ['push.sh', 'push.ps1']:
        with open(tmpldir.joinpath(push)) as src:
            with open(p.joinpath(push), 'w') as out:
                out.write(Template(src.read()).render(src=Path.cwd(), dest=name))
    print(f'.remote directory created.')

if __name__ == '__main__':
    init()
