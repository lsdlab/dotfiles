#! /bin/zsh

cd content/

fileName=`date "+%Y-%m-%d"`
currentTime=`date "+%Y-%m-%d %H:%M:%S"`

cat>${fileName}.md<<EOF
Title:
Date: ${currentTime}
Modified: ${currentTime}
Category:
Tags:
Slug:
Authors: Chen Jian
Summary:
EOF

echo "Create ~/Document/BreakWire/content/${fileName}.md"
