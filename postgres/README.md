# PostgreSQL & PgAdmin 4 configuration

When the installation of the containers has finished, follow these steps needed to connect PgAdmin 4 to PostgreSQL:
<ul>
  <li>In your browser navigate to localhost:5050</li>
  <li>Insert the credentials for PgAdmin 4 (you can find them in the docker-compose file)</li>
  <li>Defuault credentials:</li>
  <ul><li>User: admin@admin.com</li><li>Pwd: admin</li></ul>
  <li>Click on Login</li>
</ul>

Right click on "Servers" and click Register - Server</br>
<img src="./assets/server%20creation.png" width = 500/></br>

Give a name to the server</br>
<img src="./assets/general.png" width = 500/></br>

Select "Connection" tab and write the name of the service "db", the username and password of PostgreSQL<br>
<img src="./assets/db.png" width = 500/></br>

Click "Save".
