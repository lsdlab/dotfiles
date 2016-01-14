#!/bin/zsh

# octopress update config
rake generate && git add . && git commit -m "update config" &&
git push origin source && rake deploy
