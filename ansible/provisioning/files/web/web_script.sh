#!bin/bash

echo "------------------------------------------------"
systemctl status chronyd
echo "------------------------------------------------"
date
echo "------------------------------------------------"
systemctl status nginx
echo "------------------------------------------------"
echo "ss -tln | grep 80"
ss -tln | grep 80
echo "------------------------------------------------"
service auditd restart
echo "------------------------------------------------"
curl http://192.168.56.10 | head -n 4
echo "------------------------------------------------"
echo "mv /usr/share/nginx/html/index.html /usr/share/nginx/html/index.bak"
mv /usr/share/nginx/html/index.html /usr/share/nginx/html/index.bak
echo "------------------------------------------------"
curl http://192.168.56.10 | head -n 4
echo "------------------------------------------------"
echo "chmod +x /etc/nginx/nginx.conf"
chmod +x /etc/nginx/nginx.conf
echo "------------------------------------------------"
echo "echo test auditd > /etc/nginx/default.d/file"
echo "test auditd" > /etc/nginx/default.d/file
echo "------------------------------------------------"
echo "ausearch -f /etc/nginx/nginx.conf"
ausearch -f /etc/nginx/nginx.conf
echo "------------------------------------------------"
echo "grep nginx_conf /var/log/audit/audit.log"
grep nginx_conf /var/log/audit/audit.log
echo "------------------------------------------------"
