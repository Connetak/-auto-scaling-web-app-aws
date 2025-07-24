#!/bin/bash
# Update and install Apache web server
yum update -y
yum install -y httpd

# Start and enable the service
systemctl start httpd
systemctl enable httpd

# Create a custom index.html file
cat <<EOF > /var/www/html/index.html
<html>
  <head>
    <title>Auto-Scaling Web App</title>
  </head>
  <body>
    <h1 style="color:green;">🚀 Deployed by Auto Scaling Group</h1>
    <p>Project by <strong>Akash Kumar</strong> - AWS Beginner Cloud Engineer</p>
    <p>Instance ID:  $INSTANCE_ID</P>
  </body>
</html>
EOF

  
