#! /bin/zsh

cd content/

filename_now=`date "+%Y-%m-%d"`
now=`date "+%Y-%m-%d %H:%M:%S"`

cat>${filename_now}.md<<EOF
Title:
Date: ${now}
Modified: ${now}
Category:
Tags:
Slug:
Authors: Chen Jian
Summary:
EOF
