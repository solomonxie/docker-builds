#!/bin/bash

cat << EOF >> /etc/profile
export APACHE_RUN_USER="www-data"
export APACHE_RUN_GROUP="www-data"
export APACHE_LOG_DIR="/var/log/apache2"
export APACHE_PID_FILE="/var/run/apache2.pid"
export APACHE_LOCK_DIR="/var/lock/apache2"
export APACHE_RUN_DIR="/var/run/apache2"
EOF

mkdir -p /var/lock/apache2
chown www-data /var/lock/apache2

mkdir -p /var/webdav
chown www-data /var/webdav

# Enable Site Definition in the conf file
a2ensite webdav

# Authorization: setup user & password
htpasswd -cb /etc/apache2/webdav.password $USERNAME $PASSWORD
chown root:www-data /etc/apache2/webdav.password
chmod 640 /etc/apache2/webdav.password

# Run Apache server
apache2 -D FOREGROUND
