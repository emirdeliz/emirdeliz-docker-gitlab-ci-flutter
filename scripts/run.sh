#!/bin/sh

gitlab-runner exec docker build --env SSH_PRIVATE_KEY="$(cat ~/.ssh/id_rsa)"
