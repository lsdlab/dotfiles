#! /bin/zsh

pelican content
cd output
git add .
git commit -m "update"
git push origin master

ssh skynet "cd BreakWire; git pull origin master; exit"

echo "Blog updated in https://lsdlab.github.io and https://breakwire.me"
