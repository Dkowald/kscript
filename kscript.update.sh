#!/bin/bash
git -C ~/kscript pull

find ~/kscript/ -type f -iname "*.sh" -exec chmod u+x {} \;