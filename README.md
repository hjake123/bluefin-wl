# bluefin-wl

![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/hjake123/bluefin-wl/build.yml)

This image is intended to be a version of Bluefin latest with the Broadcom wl driver included.
If you happen to have one of the chips that is only well served by wl, this is for you!

The image will try to rebuild each time Bluefin updates, though the build will fail if Bluefin hasn't caught up to the akmods universalblue image. In this case, there might be a delay of a few days before a new package is released.

To rebase to this image, you could run:

```
bootc switch ghcr.io/hjake123/bluefin-wl:latest
```

Documentation for the image template can be found here:

https://github.com/ublue-os/image-template
