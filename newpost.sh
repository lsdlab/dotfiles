#!/bin/zsh

# octopress new blog post
rake generarte && git add . && git commit -m "new post" && git push origin
source && rake deploy
