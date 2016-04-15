#!/usr/bin/env bash
convert $1 -crop -0-65 $1 && convert $1 -crop -0+33 $1

# : 1460717301:0;git checkout -- offline_disabled.png
# : 1460717305:0;imgcat offline_disabled.png
# : 1460717310:0;convert offline_disabled.png -crop -0-65 offline_disabled.png
# : 1460717316:0;convert offline_disabled.png -crop -0+33 offline_disabled.png
