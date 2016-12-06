from glob import iglob
import os
import re

for filepath in iglob('en/**/*.md', recursive=True):
    with open(filepath) as md_file:
        contents = md_file.read()

    link_urls = re.findall('!\[([^]]*)\]\(([^)]+)\)', contents)

    for link_text, url in link_urls:
        if url.startswith('/static/devportal_uploaded'):
            target_filepath = url[26:].rstrip('/')

            filedir = os.path.dirname(filepath)
            relative_filepath = os.path.relpath(
                'media/' + target_filepath,
                filedir
            )

            match = '!\[{link_text}\]\({url}\)'.format(**locals())
            replace = '![{link_text}]({relative_filepath})'.format(**locals())

            contents = re.sub(match, replace, contents)

    with open(filepath, 'w') as md_file:
        md_file.write(contents)
