import os
from pathlib import Path



def init():
    '''
    Make .remote directory in current working directory.
    '''
    p = Path('./.remote')
    if p.exists():
        print(f'{p} .remote directory already exists.')
        return
    os.mkdir('./.remote')
    print(f'.remote directory created.')

if __name__ == '__main__':
    init()
