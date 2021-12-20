#!/bin/sh

/root/bin/git config --global user.name dldudgjs31
/root/bin/git config --global user.email dldudgjs31@naver.com
/root/bin/git config --list > git_id_check

cd /root/silk/Crontab_git_push/

/root/bin/git add .

/root/bin/git checkout -b main

echo $(date) >> test.txt

/root/bin/git add .

eval $(ssh-agent -s)

ssh-add ~/.ssh/lee

/root/bin/git commit -am "$(date) commit test" 

/root/bin/git push --set-upstream origin main


