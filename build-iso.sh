#!/bin/bash
mkdir -p output

podman \
run \
--rm \
--name \
almalinux-bootc-gitops-bootc-image-builder \
--tty \
--privileged \
--security-opt \
label=type:unconfined_t \
-v \
/Users/roryschellekens/workspace/almalinux-bootc-gitops/output:/output/ \
-v \
/var/lib/containers/storage:/var/lib/containers/storage \
-v \
/Users/roryschellekens/workspace/almalinux-bootc-gitops/config.toml:/config.toml:ro \
--label \
bootc.image.builder=true \
quay.io/centos-bootc/bootc-image-builder:latest \
ghcr.io/ferrory/almalinux-bootc-gitops:latest \
--output \
/output/ \
--type \
anaconda-iso \
--target-arch \
arm64 \
--use-librepo=False \
--rootfs \
xfs
