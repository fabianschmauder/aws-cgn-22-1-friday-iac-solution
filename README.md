# IaC solution

## Exercise 03/06/22

Exercise to learn the Basics about VPC and IaC

We will build a VPC with a webserver

### 1. Build VpC by hand
1. Create a VPC with a public subnet
1. Start a server at the public subnet and use the userdata 
``` 
#!/bin/bash
# Install Apache Web Server and PHP
yum install -y httpd mysql php
# Download Lab files
wget https://aws-tc-largeobjects.s3.amazonaws.com/ILT-TF-100-TUFOUN-1/4-lab-vpc-web-server/lab-app.zip
unzip lab-app.zip -d /var/www/html/
# Turn on web server
chkconfig httpd on
service httpd start
```
 to host a website

### 2. Build Vpc with cloudformation
1. Create a cloudfromation template with
    - a vpc
    - public subnet
    - ec 2 instance
    - website hosting ( you can set the user data )

### 3. Build vpc with terraform (Optional)
1. create a terraform project and build you vpc with terraform

### 4. create a github actions pipeline (Optional)
1. Use github actions to deploy you infrastrucutre with cloudformation
1. Use github actions to deploy your infrastrucute with terraform
