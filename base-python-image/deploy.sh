docker buildx build --platform linux/amd64,linux/arm64 -t nicolasmmb/python:latest --push .
# linux/arm/v7 is not supported by the base image
