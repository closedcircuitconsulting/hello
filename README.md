# Hello World Container

## Overview
This directory contains the Containerfile and source code necessary to create the hello world Closed Circuit Consulting container image.

Using this image is helpful to:
* Prove that basic container operations are working on the host
* Container creation was successfully accomplished (`podman ps -a`)
* The created container was able to stream output to your terminal

## Run
Run:
```bash
podman run ghcr.io/closedcircuitconsulting/hello
```

Which will output:
```

-_                 _-_                 _-_      .
   \             /     \             /     \    .
    \           /       \           /       \   .
_ _ _\ _ _ _ _ / _ _ _ _ \ _ _ _ _ / _ _ _ _ \ _.
      \       /           \       /           \ .
       \     /             \     /             \.
         -_-                 -_-                .
------------------------------------------------

            Closed Circuit Consulting
                Twin Cities, MN

Git:    https://git.closedcircuitconsulting.com
Mirror: https://github.com/closedcircuitconsulting

```

## Build
Build:
```bash
podman build -t ccchello .
```

Run:
```bash
podman run localhost/ccchello:latest
```
