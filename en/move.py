from glob import iglob
import os

for filename in iglob('**/*.md', recursive=True):
    dirname = filename.rstrip('.md')

    if os.path.isdir(dirname):
        os.rename(filename, os.path.join(dirname, 'index.md'))
