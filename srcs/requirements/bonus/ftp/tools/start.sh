#!/bin/bash

echo "$DB_PASSWORD\n$DB_PASSWORD\n\n\n\n\n\ny\n" | adduser $DB_USER

chown -R mbeaujar:mbeaujar /home/mbeaujar
chmod 755 /home/mbeaujar

exec vsftpd /etc/vsftpd/vsftpd.conf