#!bin/bash

echo "------------------------------------------------"
systemctl status chronyd
echo "------------------------------------------------"
date
echo "------------------------------------------------"
echo "ss -tulpn | grep rsyslogd"
ss -tulpn | grep rsyslogd
echo "------------------------------------------------"
echo "curl http://192.168.56.10"
curl http://192.168.56.10 | head -n 4
echo "------------------------------------------------"
echo "tail /var/log/rsyslog/web/nginx_access.log"
tail /var/log/rsyslog/web/nginx_access.log
echo "------------------------------------------------"
echo "tail /var/log/rsyslog/web/nginx_error.log"
tail /var/log/rsyslog/web/nginx_error.log
echo "------------------------------------------------"
echo "tail /var/log/audit/audit.log | grep web"
tail /var/log/audit/audit.log | grep web
echo "------------------------------------------------"
