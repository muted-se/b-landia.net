#!/bin/env bash

podman login dhi.io

podman run -it --rm \
       --entrypoint /bin/bash \
       --userns=keep-id \
       --volume ./:/hugo:Z,U \
       --user $(id -u):$(id -g) \
       --publish 1313:1313 \
       docker.io/chainguard/hugo:latest-dev@sha256:5c8916789231d4393600c933985fa03b65bf2f7d701af4ad7b75fc293eee44cb
