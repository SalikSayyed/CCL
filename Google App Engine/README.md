1. Create a Google Cloud Platform project, if you don't have one already.
2. Make sure that Python 2.7 is installed on your system:
python -V
Note: As of Cloud SDK version 206.0.0, the gcloud CLI has experimental support for running using a Python 3.4+ interpreter (run gcloud topic startup for exclusions and more information on configuring your Python interpreter). All other Cloud SDK tools still require a Python 2.7 interpreter.
3. Download the archive file best suited to your operating system. Most machines will run the 64-bit package. If you'd like to check, run uname -m to verify if you're running a 64-bit system.
4. Extract the archive to any location on your file system; preferably, your Home folder. On Linux, you can extract the archive file by running this command:
tar zxvf [ARCHIVE_FILE] google-cloud-sdk
5. If you're having trouble getting the gcloud command to work, ensure your $PATH is defined appropriately. Use the install script to add Cloud SDK tools to your path. You will also be able to opt-in to command-completion for your bash shell and usage statistics collection during the installation process. Run the script using this command:./google-cloud- sdk/install.sh
Restart your terminal for the changes to take effect.
Alternatively, you can call Cloud SDK after extracting the downloaded archive by invoking its executables via the full path.
Initialize the SDK
Use the gcloud init command to perform several common SDK setup tasks. These include authorizing the SDK tools to access Google Cloud Platform using your user account credentials and setting up the default SDK configuration.
To initialize the SDK:
1. Run the following at a command prompt:
gcloud init
Note: To prevent the command from launching a web browser, use gcloud init --consoleonly instead. To authorize without a web browser and non-interactively, create a service account with the appropriate scopes using the Google Cloud Platform Console and use gcloud auth activate-service-account with the corresponding JSON key file.
2. Accept the option to log in using your Google user account: To continue, you must log in. Would you like to log in (Y/n)? Y
3. In your browser, log in to your Google user account when prompted and click Allow to grant permission to access Google Cloud Platform resources.
4. At the command prompt, select a Cloud Platform project from the list of those where you have Owner, Editor or Viewer permissions:
Pick cloud project to use:
[1] [my-project-1]
[2] [my-project-2]
...
Please enter your numeric choice:
If you only have one project, gcloud init selects it for you.
5. If you have the Google Compute Engine API enabled, gcloud init allows you to choose a default Compute Engine zone:
Which compute zone would you like to use as project default?
[1] [asia-east1-a]
[2] [asia-east1-b]
...
[14] Do not use default zone Please enter your numeric choice:
gcloud init confirms that you have complete the setup steps successfully: gcloud has now been configured!
You can use [gcloud config] to change more gcloud settings. Your active configuration is: [default]
Run core gcloud commands
Run these gcloud commands to view information about your SDK installation:
1. To list accounts whose credentials are stored on the local system: gcloud auth list
gcloud displays a list of credentialed accounts:
Credentialed Accounts ACTIVE ACCOUNT
* example-user-1@gmail.com example-user-2@gmail.com
2. To list the properties in your active SDK configuration:
gcloud config list
gcloud displays the list of properties:
[core]
account = example-user-1@gmail.com disable_usage_reporting = False project = example-project
3. To view information about your Cloud SDK installation and the active SDK configuration: gcloud info
gcloud displays a summary of information about your Cloud SDK installation. This includes information about your system, the installed SDK components, the active user account and current project, and the properties in the active SDK configuration.
4. To view information about gcloud commands and other topics from the command line: gcloud help
For example, to view the help for gcloud compute instances create: gcloud help compute instances create
gcloud displays a help topic that contains a description of the command, a list of command flags and arguments, and examples of how to use it.
How to Run Program:
Now as we have finished installing app engine, now it’s time to create and upload an app. In this case we will be taking example of a “HELLO WORLD” app in python.
1. As we already have made sure that we have python installed in our system, It will be easier for us
to clone existing code and deploy it rather than creating our own so we will use python docssample.
Run the command “git clone https://github.com/GoogleCloudPlatform/python-docssamples”.
2. cd python docs- samples/appengine/standard/hello_world
3. dev_appserver.py app.yaml
