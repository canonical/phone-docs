from glob import iglob
import os
import re

for filepath in iglob('en/**/*.md', recursive=True):
    with open(filepath) as md_file:
        contents = md_file.read()

    link_urls = re.findall('(?<!!)\[([^]]+)\]\(([^)]+)\)', contents)

    for link_text, url in link_urls:
        if url.startswith('/en/phone'):
            target_filepath = url[9:].lstrip('/').rstrip('/')

            if os.path.isfile('en/' + target_filepath + '.md'):
                target_filepath += '.md'
            elif os.path.isdir('en/' + target_filepath):
                target_filepath += '/index.md'

            filedir = os.path.dirname(filepath)
            relative_filepath = os.path.relpath(
                'en/' + target_filepath,
                filedir
            )

            match = '(?<!!)\[{link_text}\]\({url}\)'.format(**locals())
            replace = '[{link_text}]({relative_filepath})'.format(**locals())

            contents = re.sub(match, replace, contents)

    with open(filepath, 'w') as md_file:
        md_file.write(contents)
