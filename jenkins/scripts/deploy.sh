#!/usr/bin/env sh

set -x

# Run Docker container with mapped volume and specified port
docker run -d -p 80:80 --name my-apache-php-app -v /d/jenkins/jenkins-php-selenium-test/src:/var/www/html php:7.2-apache

# Give the container some time to start up
sleep 1

set +x

echo 'Now...'
echo 'Visit http://localhost to see your PHP application in action.'
