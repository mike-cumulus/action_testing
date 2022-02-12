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
    
# AWS CDK, AWS SDK, and Matt's CDK SSO Plugin https://www.npmjs.com/package/cdk-cross-account-plugin
RUN npm i -g aws-cdk@${CDK_VERSION}

# Set default run command
CMD ["/bin/bash"]
