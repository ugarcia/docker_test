#!/usr/bin/env bash
HOME_DIR="$( cd "$( dirname "$0" )" && pwd )"
cp ~/.ssh/id_rsa ${HOME_DIR}/id_rsa
docker build "$@" -t ubuntu_14.04_w_git ${HOME_DIR}
rm -rf ${HOME_DIR}/id_rsa

