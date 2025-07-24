#!/bin/bash
yum install -y httpd
systemctl start httpd
systemctl enable httpd
echo "Hello from AWS Auto-Scaling Web App!" > /var/www/html/index.html
