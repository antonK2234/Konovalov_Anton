!/bin/bash
sudo apt update && sudo apt upgrade -y
sudo apt install apache2 -y
sudo systemctl status apache2

sudo chmod -R 777 /var/www/html

cat << EOT > /var/www/html/index.html
<html>
    <head>
        <title>Welcome to My_domain!</title>
    </head>
    <body>
        <h1>Success! My_domain is working, Konovalov Anton!</h1>
    </body>
</html>
EOT

sudo a2ensite my_domain.conf

sudo systemctl restart apache2
