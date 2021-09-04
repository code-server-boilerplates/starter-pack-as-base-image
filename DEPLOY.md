# Dwployment Docs

## As an docker containner

This Docker image is available on GHCR, Quay.io and Docker Hub, so you can pull away when needed.

```sh
####### NOTE TO TEMPLATE MAINTAINERS STARTS HERE #####
# Update the command below to use your image name that's #
#published on GHCR, Quay, Docker Hub and any other       #
# containner registry you want to publish. Make sure they#
# are available for public consumption especially on     #
# GHCR since they're private by default. Consult the     #
# maintainer docs at https://csb-docs.rtapp.tk/ghcr for  #
# details about publishing images on GHCR.               #
######### NOTE TO TEMPLATE MAINTAINERS ENDS HERE #########
# Available mirrors (template maintainers, plz update):
# RHQCR: quay.io/code-server-boilerplayes/kubernetes-starter
# Docker Hub: codeserverboilerplates/kubernetes-starter
docker pull ghcr.io/code-server-boilerplates/kubernetes-starter
```

Then to start:

```
# see https://csb-docs.rtapp.tk/env-vars for list of supported
# environment variables on both the codercom/code-server base image
# and Starter Pack.
docker run -e GIT_USER_EMAIL=$(git config --global user.email) -e GIT_USER_NAME=$(git config --global user.name) \
    -e GITHUB_TOKEN=ghp_yourTokenHereIfGHcliIsNotHere -e GITHUB_LOGIN=username \
    -e GIT_REPO=https://github.com/benawad/dogehouse -e GENERATE_PASSWORD=true

    ghcr.io/code-server-boilerplates/kubernetes-starter
```

If you hate this, you can use the Docker Compose path by doing these:

```
# WIP
```

## With Railway

![Railway](https://cdn.rtapp.tk/deployment-button-badges/railwayyapp.png)

Once you pressed the badge and redirected to Railway, the following variables you need to fill up are:

*
