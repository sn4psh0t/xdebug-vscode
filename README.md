# xdebug-vscode
A Docker compose solution to debug php in vscode on LAMP with xdebug

# How to use
Tested on Linux Fedora 34:
1. Simply give a `docker-compose up -d --build` to build the containers
1. Open vscode
1. Import the project folder into the workspace
1. Put some *.php* files into the `app` directory (which the php container will mount as a volume)
1. Add a breakpoint to `index.php` file
1. Create, in vscode, a new launch configuration for the project with the contents of the `launch.json` file.
NOTE: If needed, customize the `pathMappings` configuration of the `launch.json` file pointing at the correct location of the `app` directory.
1. Open your browser and point to: `http://localhost:8080/index.php`. Vscode should pop up and stop for the debugging.


Enjoy!

