#! /bin/zsh

pelican content
cd ~/Documents/breakwire/output
git add .
git commit -m "update"
git push origin master

ssh do "cd BreakWire; git pull origin master; exit"

echo "Blog updated in https://lsdlab.github.io and https://breakwire.me"
