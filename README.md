# almalinux-bootc-gitops


For creating the Alma Linux Bootc iso file the following parameter needs to be given to the image builder command: 
```
--use-librepo=False
```

If you don't use this parameter the bootc-image-builder will not be able to download the RPMs.
