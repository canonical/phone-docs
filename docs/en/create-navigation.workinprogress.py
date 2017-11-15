import os
from glob import glob

files = glob('**/*.md', recursive=True)

# Sort files
file_tree = {}

for path in files:
    dirname = os.path.dirname(path)
    filename = os.path.basename(path)
    dirparts = dirname.split('/')

    current_level = file_tree

    for part in dirparts:
        if part != '':
            if part not in current_level:
                current_level[part] = {}
            current_level = current_level[part]

        if part == dirparts[-1]:
            if 'files' not in current_level:
                current_level['files'] = []
            current_level['files'].append(filename)

# Print the navigation
print('navigation:')

if 'index.md' in file_tree['files']:
    print('  - title: Introduction')
    print('    location: index.md')
    print('')

for dir_name, dir_contents in file_tree.items():
    if dir_name != 'files':
        name = dir_name.capitalize()
        print('  - title: ' + name)

        if 'files' in dir_contents and 'index.md' in dir_contents['files']:
            print('    location: ' + dir_name + '/index.md')
