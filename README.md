# Boilerplate for Helm Charts development + using Okteto CLI

This deploy-code-server template uses the `starter-pack` GHCR image as its base image in this real-life example.

## Tools Included

* Everything in `starter-pack`, plus:
  * Okteto CLI
  * Helm, the package manager for Kubernetes
  * kubectl to remotely manage Kubernete clusters

## Checklist for new template maintainers

_If you want to customize the base image, either [go to this repo](https://github.com/code-server-boilerplates/starter-pack/generate) and follow
the new template maintainer's checklist or change the base image into [any available Docker images here][base-images-list]_

[base-docker-images]: https://csb-maintainer-docs.community-lores.gq/starter-pack/making-templates-using-base-images/picking-different-image

* [X] Duplicate this repo or [generate as new repo](https://github.com/code-server-boilerplates/starter-pack-as-base-image) to get started.
* [ ] Change any references to this template with your own.
