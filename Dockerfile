FROM python:3.9-alpine

# Set image labels
LABEL maintainer="mike@cumulustech.us"

# Set build args with defaults
ARG CDK_VERSION=1.86.0

# Setup
RUN mkdir /proj
WORKDIR /proj
RUN apk -U --no-cache add \
    bash \
    git \
    curl \
    nodejs \
    npm &&\
    rm -rf /var/cache/apk/*

# Set default run command
CMD ["/bin/bash"]
