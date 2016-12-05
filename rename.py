from glob import iglob
import os

for filename in iglob('*.md'):
    fileparts = filename.rstrip('.md').rstrip('_').split('_')
    directory = ""
    for index, part in enumerate(fileparts):
        if index + 1 < len(fileparts):
            directory = os.path.join(directory, part)
            if not os.path.isdir(directory):
                os.makedirs(directory)
        else:
            new_place = os.path.join(directory, part + '.md')
            os.rename(filename, new_place)
