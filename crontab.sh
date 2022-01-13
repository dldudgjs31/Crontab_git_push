#!/bin/sh

/usr/local/cpanel/3rdparty/lib/path-bin/git config --global user.name dldudgjs31
/usr/local/cpanel/3rdparty/lib/path-bin/git config --global user.email dldudgjs31@naver.com
/usr/local/cpanel/3rdparty/lib/path-bin/git config --global user.mail dldudgjs31@naver.com
/usr/local/cpanel/3rdparty/lib/path-bin/git config --list > /home/youngtec/git/Crontab_git_push/git_id_check

cd /home/youngtec/git/Crontab_git_push/

/usr/local/cpanel/3rdparty/lib/path-bin/git add .

/usr/local/cpanel/3rdparty/lib/path-bin/git checkout -b main

if [ "$(cat /home/youngtec/git/Crontab_git_push/test.txt | wc -l)" -gt 30 ]; then
        sed -i '1,30d' /home/youngtec/git/Crontab_git_push/test.txt
fi


echo $(date) >> test.txt

/usr/local/cpanel/3rdparty/lib/path-bin/git add .

eval $(ssh-agent -s)

ssh-add /home/youngtec/git/lyh

/usr/local/cpanel/3rdparty/lib/path-bin/git commit -am "$(date) commit test"

/usr/local/cpanel/3rdparty/lib/path-bin/git push --set-upstream origin main

#sh /root/silk/Bash_Crontab_Test/crontab.sh
