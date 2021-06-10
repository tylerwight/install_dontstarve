#!/bin/sh
numkeep=48
numexist=`ls /mnt/starve/bak|wc -l`

cp -r /home/starve/.klei/DoNotStarveTogether/Cluster_1 /mnt/starve/bak/cluster$(date +%Y_%m_%d__%H_%M)

sleep 1
i=$(ls -1tr /mnt/starve/bak | head -n 1 )

if [ $numexist -gt $numkeep ]
then
	#do if number of backups exceeds threshold
	rm -rf /mnt/starve/bak/$i

else
	#do if number of backups that exists is behlow threshold
	sleep 1
fi
