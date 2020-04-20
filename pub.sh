#! /bin/zsh

pelican content
cd ~/breakwire/output
git add .
git commit -m "update"
git push origin master

ssh root@139.162.87.225 "cd lsdlab.github.io; git pull origin master; exit"

echo "Blog updated in https://lsdlab.github.io and https://breakwire.me"
