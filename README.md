# OBSOLETED
This tool is obsoleted coz sakurafrp is upgraded to use the standard frpc.

# SakuraFrp for amd64

This is a docker file of [SakuraFrp](https://www.natfrp.com) for amd64.

[supervisor](http://supervisord.org/) is used to keep it running.

# Usage
First, you need to download the latest SakuraFrpc client file to the folder which is chosen to create this docker image. File name should be Sakura_frpc_linux_amd64.

Then, download Dockerfile and sakurafrp.conf to this folder.

Command [build](build) to build this image.

Command [save](save) to export the built image.

Check the file [readme_run](readme_run) for the environment variables.

# Run
You need to specified su (username), sp (password) and sid (server id) while starting this docker.

# Docker Hub
This package is [published](https://hub.docker.com/r/scegg/sakurafrp_amd64) to docker hub.
