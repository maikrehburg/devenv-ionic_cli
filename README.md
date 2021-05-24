# Description
This Docker image provides a dev-environment for ionic hybrid apps. 

It should be used as a startpoint for yout ionic projects. Don´t push projects in this repository!

### build image
Run script "build_image.sh"

### run container interactive in terminal
Run script "run_ionic_cli.sh".
The "apps" directory in mounted in the container as a volume. So you can edit your apps outside the container on your host system with any texteditor you like and start the app inside the container.

To serve an app go to project directiory and run command "ionic serve". Access the app with your browser on host with url http://localhost:8100 .
