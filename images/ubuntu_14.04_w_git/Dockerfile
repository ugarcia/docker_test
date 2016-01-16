# Ubuntu 14.04 with Git
#
# VERSION 0.0.1

FROM ubuntu:14.04

MAINTAINER Unai Garcia <unai@gamewheel.com>
LABEL Description="Ubuntu trusty base image with git installed an configured with host keys (must be present as ~/.ssh/id_rsa)"

RUN apt-get update && apt-get install -y --no-install-recommends \
		git-core \
		ssh \
		ca-certificates \
	&& rm -rf /var/lib/apt/lists/*

ENV HOME /root
RUN mkdir -p $HOME/.ssh
ADD id_rsa $HOME/.ssh/id_rsa
RUN chmod 700 $HOME/.ssh/id_rsa
RUN echo "Host github.com\n\tStrictHostKeyChecking no\n" >> $HOME/.ssh/config
RUN git config --global url.ssh://git@github.com/.insteadOf https://github.com/
