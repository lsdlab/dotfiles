#! /bin/zsh

cd ~/breakwire/content

fileName=`date "+%Y-%m-%d"`
currentTime=`date "+%Y-%m-%d %H:%M:%S"`

cat>${fileName}.md<<EOF
Title:
Date: ${currentTime}
Modified: ${currentTime}
Slug:
Summary:
Status: draft

EOF

echo "Create ~/Document/breakwire/content/${fileName}.md"
