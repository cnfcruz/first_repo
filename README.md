# VBOX Script Project

--------------------------------------------------------------------------------

## Table of Contents

+   [Setup Development Environment to run Grunt](#setup-development-environment-to-run-grunt)
    + [Install Node](#install-nodejs)
    + [Install Grunt](#install-grunt)
+   [Configure the Project Folder](#configure-the-project-folder)
+   [Initialize Project Folder](#initialize-project-folder)
+   [Run Grunt](#run-grunt)


--------------------------------------------------------------------------------

## Setup Development Environment to run Grunt

### Install Node.js

Choose any of the following methods to install Node.js into your working environment:

#### Using Ubuntu Package Manager

In most cases, it is sufficient to use Ubuntu's package manager to download and install Node.js:

    $ curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
    $ sudo apt-get install -y nodejs

For more information, visit: [Installing Node.js via package manager](https://nodejs.org/en/download/package-manager/#debian-and-ubuntu-based-linux-distributions)

#### Using Node Version Manager (NVM)

If you run into problems trying to install Node.js, try the installing it with NVM:

    $ curl https://raw.githubusercontent.com/creationix/nvm/v0.16.1/install.sh | sh
    $ source ~/.profile
    $ nvm install 0.12.2
    $ nvm use 0.12.2
    $ nvm alias default 0.12.2 (also might be necessary to uninstall apt-get nodejs)

For more information about using NVM, visit: [NVM on Github](https://github.com/creationix/nvm)

#### Build from Source

Alternatively, more advanced users can build node from source files at http://nodejs.org/download

1.  Visit <http://nodejs.org/download> and download the latest (or desired) linux binary
2.  Open your Linux terminal and navigate to the folder where the binary was saved. By default, the browser will save it your profile's Download folder.

        $ cd ~/Downloads/

3.  Once inside the folder, perform the following to extract, compile, and install Node.js

        // NOTE:
        // replace myDownloadedNodeSourceFile with the actual file name of the source file

        $ tar xfvz myDownloadedNodeSourceFile.tar.gz
        $ cd myDownloadedNodeSourceFile
        $ ./configure
        $ make
        $ make install


### Install Grunt

Grunt is a task manager application that serves as the backbone of Nolo Frontend's various projects. Through a Grunt application, we can effectively manage source code development, testing, compilation, and distribution.

The Node.js includes the Node Package Manager or NPM. Use the following terminal command to install Grunt globally for your work environment.

    $ sudo npm install -g grunt
    $ sudo npm install -g grunt-cli

--------------------------------------------------------------------------------

## Configure the Project Folder

Optionally, configure the project folder for your environment.

+   Modify Gruntfile.js
+   Configure package.json
+   Configure tasks




### Modify Gruntfile.js

Each project will provide a *Gruntfile.js* file, which will be sufficient as is, for most cases.

Should you need to modify this for your project, refer to the documentation in <http://gruntjs.com/>




### Configure package.json

Each project will provide a *package.json*, which will be sufficient as is, for most cases.

Should you need to modify this for your project, refer to the documentation in <https://www.npmjs.org/doc/json.html>




### Configure tasks

Each project will provide a *tasks* folder that contains several javascript files corresponding to the task that is required to run the Grunt application.

It is organized as follows:

    tasks
    ├── config
    │   └── taskconfig.json
    ├── options
    │   ├── uglify.js
    │   └── watch.js
    └── util
        ├── getTasksConfig.js
        └── getTasksOptions.js

#### Parent tasks Folder

The parent *tasks* folder may contain several javascript files like *compile.js* and *dist.js*. These are all custom tasks, meant to run a specific set of basic Grunt tasks.

Generally, these files are sufficent, as-is. Should you need to modify a custom task, refer to each file.

#### options Folder

The *options* folder contains all the individual basic tasks configuration required to run the Grunt application. Each file corresponds to a *node packaged module* as defined in the *package.json* file.

Refer to each module documentation for details on how to configure the task.

#### config Folder

Some modules can use external json files to configure their tasks. This folder is a centalized location for them.

#### util Folder

These contain custom Grunt functions required to run the application.

Do not modify them, unless it is necessary.

--------------------------------------------------------------------------------

## Initialize Project Folder

Run the following command to initialize the project folder.

    npm install

This will create a folder called 'node_modules' in your desired project folder.

**DO NOT commit this folder to SVN! The folder 'node_modules' is specific to the machine that generated it.**

--------------------------------------------------------------------------------

## Run Grunt

Run the following command to start grunt with its default configured task

    grunt
