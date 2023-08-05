
echo "Setup the repository"

echo  "Install the public key for the repository (if not done previously):"

curl -fsS https://www.pgadmin.org/static/packages_pgadmin_org.pub | sudo gpg --dearmor -o /usr/share/keyrings/packages-pgadmin-org.gpg

echo "Create the repository configuration file:"

sh -c 'echo "deb [signed-by=/usr/share/keyrings/packages-pgadmin-org.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/$(lsb_release -cs) pgadmin4 main" > /etc/apt/sources.list.d/pgadmin4.list && apt update'

echo  "Install pgAdmin"


echo "Install for both desktop and web modes:"

sudo apt install pgadmin4

echo "Configure the webserver:"

/usr/pgadmin4/bin/setup-web.sh