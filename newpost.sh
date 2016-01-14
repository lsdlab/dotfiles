#!/bin/zsh

# octopress new blog post
rake generate && git add . && git commit -m "new post" && git push origin
source && rake deploy
