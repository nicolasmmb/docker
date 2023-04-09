FROM jenkins/jenkins:lts-jdk11

USER root

# Base packages
RUN apt-get update
RUN apt-get install -y curl 
RUN apt-get install -y git
RUN apt-get install -y make
RUN apt-get install -y build-essential
RUN apt-get install -y libssl-dev
RUN apt-get install -y zlib1g-dev
RUN apt-get install -y libbz2-dev
RUN apt-get install -y libreadline-dev
RUN apt-get install -y libsqlite3-dev
RUN apt-get install -y wget
RUN apt-get install -y curl
RUN apt-get install -y llvm --fix-missing
RUN apt-get install -y libncurses5-dev
RUN apt-get install -y libncursesw5-dev
RUN apt-get install -y xz-utils
RUN apt-get install -y tk-dev
RUN apt-get install -y libffi-dev
RUN apt-get install -y liblzma-dev
RUN apt-get install -y python3-openssl

#Install Docker
RUN curl -fsSL https://get.docker.com | sh

RUN usermod -a -G docker jenkins
RUN usermod -a -G root jenkins
RUN gpasswd -a jenkins docker

# Install PYENV
ENV PYENV_ROOT="/bin/.pyenv"
ENV PYTHON_VERSION="3.11.2"

RUN curl https://pyenv.run | sh

# Add pyenv to bashrc
RUN echo "export PYENV_ROOT=\"$PYENV_ROOT\"" >> ~/.bashrc
RUN echo "export PATH=\"$PYENV_ROOT/bin:$PATH\"" >> ~/.bashrc

# Add pyenv to PATH
ENV PATH="$PYENV_ROOT/bin:$PATH"
ENV PATH="$PYENV_ROOT/shims:$PATH"

# PYENV Configuration
# RUN ls -la /bin && exit 1
# RUN cat ~/.bashrc && exit 1
RUN bash ~/.bashrc && pyenv install --list
RUN bash ~/.bashrc && pyenv install ${PYTHON_VERSION}
RUN bash ~/.bashrc && pyenv global $PYTHON_VERSION