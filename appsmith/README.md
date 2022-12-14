## Appsmith configuration and usage

<h2>First configuration</h2></p>
After the installation of the platfrom through Docker, as documented <a href="../README.md">here</a>, navigate in your browser to "localhost:80" and you'll see the welcome page of Appsmith.

<img src="../assets/appsmith.png" width="600"/></p>

Click on "Get Started" and follow the fist sign in procedure.</p>

After the sign up, Appsmith will propose to guide you in the creation of your first app with this platform. You can follow the guide or skip directly and click on the appsmith icon on the top-left corner and go to the homepage pof the platform.

<img src="../assets/appsmithhome.png" width="600"/></p>

The homepage will be something like this:</br>
<img src="../assets/homepage.png" width= "600"/></p>

<h2>Workspaces configuration</h2></p>

This platform is based on 4 different applications that are based on four roles:
<ul>
  <li>Administrator
     <ul>
       <li>Can insert new courses, new users, new enterprises, accept or decline subscription requests</li>
       <li>Can modify all the applications</li>
     </ul>
  </li>
  <li>Approvers
     <ul>
       <li>Can insert new courses, accept or decline subscription requests</li>
     </ul>
  </li>
  <li>Enterprise
     <ul>
       <li>Can request a subscription to a learning course for their employees</li>
     </ul>
  </li>
  <li>Employee (User)
     <ul>
       <li>Can request a subscription to a learning course</li>
     </ul>
  </li>
</ul></p>

Therefore it's needed the creation of four different workspaces for each type of user, to do so click on "New Workspace" and create the four different workspaces.

<img src="../assets/workspaces.png" width="600"/></p>

Finished the creation of the workspaces, the homepage will be like the following image.</br>
<img src="../assets/hp.png" width="600"/></p>

<h2>Applications import</h2>

It is possible now to import the applications in the workspaces from GitHub:
<ul>
  <li>Fork these repositories to your profile
    <ul>
      <li><a href="https://github.com/GianlucaLostuzzo/thesis_poc_admin">Admins</a></li>
      <li><a href="https://github.com/GianlucaLostuzzo/thesis-poc-approver">Approvers</a></li>
      <li><a href="https://github.com/GianlucaLostuzzo/thesis-poc-enterprise">Enterprises</a></li>
      <li><a href="https://github.com/GianlucaLostuzzo/thesis_poc_users">Users</a></li>
    </ul>
  </li>
  <li>In the corresponding workspaces, click on the options button and select <b>Import</b></li>
  </br><img src="../assets/importselect.png" width="600"/></br>
  <li>Select <b>Import from a Git repo</b></li>
  <li>Go to the forked repo and retrieve the SSH url</li>
  </br><img src="../assets/sshurl.png" width="600"/></br>
  <li>Copy the SSH in Appsmith and click <b>Generate Key</b></li>
  </br><img src="../assets/key.png" width="600"/></br>
  <li>Copy the generated key and go to settings -> Deploy Keys on the GitHub repo</li>
  </br><img src="../assets/gitkey.png" width="600"/></br>
  <li>Click on <b>Add deploy key</b>, give a name to the key, paste it, check the enable write access and click <b>Add key</b></li>
  </br><img src="../assets/namingkey.png" width="600"/></br>
  <li>On Appsmith select <b>Import</b></li>
  </br><img src="../assets/importkey.png" width="600"/></br>
</ul></p>

<h2>Application configuration</h2>

After the import, Appsmith will request the settings for the datasources which are:
<ul>
  <li>PostgreSQL for the database</li>
  <li>Sendgrid for the smtp and mail settings</li>
</ul>

PostgreSQL settings:
<ul>
  <li>Host address: host.docker.internal</li>
  <li>Port: 5431 </li>
  <li>Database name: DB_name</li>
  <li>Username: admin (from docker compose file)</li>
  <li>Password: admin (from docker compose file)</li>
</ul>

</br><img src="../assets/pgsource.png" width="600"/></p>

Sendgrid settings (you'll need to have a sendgrid profile and api, if you don't <a href="https://signup.sendgrid.com">click here</a>):
<ul>
  <li>Host address: smtp.sendgrid.net</li>
  <li>Port: 587</li>
  <li>Username: apikey</li>
  <li>Password: your_api_password</li>
</ul>

</br><img src="../assets/sendgridsource.png" width="600"/></p>

Now the application is ready to be used.

</br><img src="../assets/ok.png" width="600"/></p>

To use the application click on the top-right corner and select "Current deployed version".

Operate the same steps for each application and then share the different applications to the designed users.

Refer to <a href="https://docs.appsmith.com/getting-started/readme">Appsmith's documentaion</a> for every problem.










