echo "Taking Backup"
time_stamp=$(date +%Y-%m-%d-%T)
backuppath="/backup"
mkdir -p "${backuppath}/${time_stamp}"
echo "Backup folder created at ${backuppath}/${time_stamp}"
cp -rf /mnt/jenkinsbackup/* "${backuppath}/${time_stamp}/"
echo "Backup Completed"
