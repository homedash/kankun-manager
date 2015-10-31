#!/bin/bash

IFS=$'\r\n' GLOBIGNORE='*' :; RAW_HOSTS=($(cat hosts | cut -d\  -f1))

# Default root password for Kankun Small K is: p9z34c, you should set your own.
PASS="p9z34c"
HOSTS=("${RAW_HOSTS[@]:1}")

for i in "${HOSTS[@]}"
do
  :
  echo "Copying install files to ${i}..."

  sshpass -p$PASS scp roles/smallk/files/root/opkg-rc3.tar.gz root@${i}:/root/opkg-rc3.tar.gz
  sshpass -p$PASS scp -r roles/smallk/files/www/* root@${i}:/www/
  sshpass -p$PASS scp roles/smallk/files/root/broadcast.sh root@${i}:/root/broadcast.sh
done

ansible-playbook -i hosts kankun.yml
