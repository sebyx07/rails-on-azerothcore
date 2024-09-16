# syntax = docker/dockerfile:1

# Make sure RUBY_VERSION matches the Ruby version in .ruby-version
ARG RUBY_VERSION=3.3.4
ARG USER_ID=1000
ARG GROUP_ID=1000
ARG DOCKER_USER=rails
FROM docker.io/library/ruby:$RUBY_VERSION-slim AS base

# Install base packages
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y curl default-mysql-client libjemalloc2 libvips \
    build-essential default-libmysqlclient-dev git pkg-config && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

ENV BUNDLE_PATH="/usr/local/bundle" \
    BUNDLE_JOBS="20" \
    RUBYOPT="--enable-yjit --yjit-exec-mem-size=256"

# Install packages needed to build gems
RUN apt-get update -qq && \
    apt-get install --no-install-recommends -y  && \
    rm -rf /var/lib/apt/lists /var/cache/apt/archives

# Use ARG values in RUN command
ARG USER_ID
ARG GROUP_ID
ARG DOCKER_USER

RUN groupadd --gid ${GROUP_ID} ${DOCKER_USER} \
    && useradd --uid ${USER_ID} --gid ${GROUP_ID} -m ${DOCKER_USER} \
    && mkdir -p /rails && chown ${DOCKER_USER}:${DOCKER_USER} /rails

RUN chown ${DOCKER_USER}:${DOCKER_USER} /usr/local/bundle

USER $DOCKER_USER
WORKDIR /rails

ENV PATH="/rails/bin:$PATH"

# Entrypoint prepares the database.
CMD ["/bin/bash"]