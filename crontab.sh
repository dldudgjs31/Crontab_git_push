#!/bin/sh

git config --global user.name dldudgjs31
git config --global user.email dldudgjs31@naver.com
git config --list > git_id_check

cd /root/silk/Crontab_git_push/

/root/bin/git add .

/root/bin/git checkout -b main

echo $(date) >> test.txt

eval $(ssh-agent -s)

ssh-add ~/.ssh/lee

/root/bin/git commit -am "$(date) commit test" 

/root/bin/git push --set-upstream origin main


