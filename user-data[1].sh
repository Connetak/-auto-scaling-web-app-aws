#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd

cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html>
<head>
    <title>Contact Me - Akash Kumar</title>
</head>
<body style="font-family: Arial; text-align: center; margin-top: 50px;">
    <h1>🚀 Auto-Scaling Contact App</h1>
    <p>This is a simple interactive contact form deployed via AWS EC2 & Auto Scaling.</p>
    <form onsubmit="handleSubmit(event)">
        <input type="text" placeholder="Your Name" required /><br><br>
        <input type="email" placeholder="Your Email" required /><br><br>
        <textarea placeholder="Your Message" required></textarea><br><br>
        <button type="submit">Send</button>
    </form>
    <p id="thanksMessage" style="color: green; display: none;">✅ Message sent!</p>

    <script>
        function handleSubmit(e) {
            e.preventDefault();
            document.getElementById('thanksMessage').style.display = 'block';
        }
    </script>

    <hr>
    <p>Instance ID: \$(curl http://169.254.169.254/latest/meta-data/instance-id)</p>
</body>
</html>
EOF

  
