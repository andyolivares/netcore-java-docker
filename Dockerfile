FROM mcr.microsoft.com/dotnet/sdk:6.0-jammy
LABEL maintainer="Andres Olivares <andyolivares@gmail.com>"

# Update OS packages
RUN apt-get update && apt-get upgrade -y --no-install-recommends
RUN apt-get install -y zip unzip
RUN mkdir -p /usr/share/man/man1 /usr/share/man/man2

# Install OpenJDK 11
RUN apt-get install -y --no-install-recommends openjdk-11-jre-headless

# Install jq tool
RUN curl -s -L --output /usr/local/bin/jq https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64
RUN chmod +x /usr/local/bin/jq
