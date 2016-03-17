#!/bin/bash
sh getOrder.sh $1 > .usedfiles
git ls-files | egrep -v '^\.|\.sh$|\.md$|Makefile' > .trackedreportfiles
echo 'Unused files:'
grep -Fxv -f .usedfiles .trackedreportfiles
rm -f .usedfiles .trackedreportfiles
