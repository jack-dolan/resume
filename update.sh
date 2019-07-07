#!/bin/bash

# Run this each time resume.tex gets updated to generate new resume.pdf and README.md with new date & resume

echo '# Jack Dolan - Résumé \n\n' > './README.md'

date '+%Y-%m-%d' >> './README.md'

echo '\n\n' >> 'README.md'

pandoc resume.tex -t markdown_github >> 'README.md'
