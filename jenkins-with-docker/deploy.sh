docker buildx build --platform linux/amd64 -t nicolasmmb/jenkins-docker:latest --push .
# linux/arm/v7 and linux/arm64 is not supported by the base image
