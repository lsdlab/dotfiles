#!/bin/zsh

# octopress preview blog post in localhost:4000
rake clean && rake generate && rake preview
