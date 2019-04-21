#!/bin/sh
echo "Start uploading..."
DIRECTORY=$1
cd $DIRECTORY
echo "Directory: $1"
sshpass -p "$SFTP_PASSWORD" sftp -oStrictHostKeyChecking=no -oPort=$SFTP_PORT $SFTP_USERNAME@$SFTP_HOSTNAME << EOF
    put -r .
    exit
EOF
