#! /bin/zsh

cd ~/Documents/breakwire/content

fileName=`date "+%Y-%m-%d"`
currentTime=`date "+%Y-%m-%d %H:%M:%S"`

cat>${fileName}.md<<EOF
Title:
Date: ${currentTime}
Modified: ${currentTime}
Category:
Tags:
Slug:
Authors: JC
Summary:
Status: draft

EOF

echo "Create ~/Document/breakwire/content/${fileName}.md"
