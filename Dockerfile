FROM mcr.microsoft.com/devcontainers/base:ubuntu

# Update sources for nodejs
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -

RUN apt update \
    && apt install -y \
    nodejs

RUN npm install -g fsh-sushi@3.0.0-beta.1
