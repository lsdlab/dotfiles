#! /bin/zsh

make html
cd output
git add .
git commit -m "update"
git push origin master