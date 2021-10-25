              # CARTO-3 SA Taxi POC

##Getting started.

### Download and install nodejs https://nodejs.org/en/

#### Please note you will need an access to a terminal to perform all required installations (cmd/powershell on windows, xterm or just terminal on linux).

#### - Once the installation has completed confirm by running ` npm -v` and ` node -v` ![node version](/assets/img/node_version.JPG)

#### - Alternatively follow the steps here `https://docs.npmjs.com/downloading-and-installing-node-js-and-npm`

#### - Install yarn ` npm install --global yarn`, confirm installation by running `yarn --version` ![yarn version](/assets/img/yarn.JPG)

#### Create a folder or directory, navigate into the folder from the terminal.

#### - on terminal you can run ` mkdir {your_folder_name}`, navigate into the new folder by running `cd {your_folder_name}`

#### while inside the newly created folder create a react application by running `npx create-react-app {your-app-name} --template @carto/base-3` ![create app](/assets/img/create-app.JPG)

#### when the installation is finished run `cd {your-app-name}` and run `yarn start`

### On your terminal once app has started you should see.

![app start](/assets/img/success.JPG)
![Running the application](/assets/img/client_id-error.JPG)

#### once the application is complete ypu should have :

### ![folder structure after download](/assets/img/project_folder.jpg)

#### It is important to have a CARTO account created beforehand https://gcp-europe-west1.app.carto.com/home

#### Login to your existing CARTO account

## Connecting your CARTO account

#### Get an Application ID

####To connect a private application you first need to create an Application and get an Application ID:

####You need to go to the Developers section in the Workspace

### ![dev section img](/assets/img/dev.JPG)

#### Click on create new to create a new application id

![create a new app id](/assets/img/new.JPG)

#### fill in the required details (app name, description, url for development purposes we make use of 127.0.0.1 on port 3000) and save:

#### ![form fields](/assets/img/app-details.JPG)

#### A client ID will be generated as in the screenshot below

#### ![client id gen](/assets/img/app_id)

#### in your application directory navigate into src/store and edit file `initialStateSlice.js`

##### copy your generated app id and baseUrl into the OAUTH object see below

##### ![credentials object](/assets/img/cred.JPG)

#### From the browser navigate into https://127.0.0.1:3000

#### if all went well a page like the one below should be displayed

![Login](/assets/img/login.JPG)

#### Login using your CARTO credentials.

#### If a screen like this one below is now diplayed congratulations you have successfully installed the CARTO3 app and are ready to start coding.

![home page](/assets/img/home.JPG)
