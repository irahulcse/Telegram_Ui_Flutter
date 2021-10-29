#!/bin/sh
git add .
git commit -m "Automatic Commit `date +%F-%T`"
git pull origin master
git push origin master