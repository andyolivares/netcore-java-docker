FROM mcr.microsoft.com/dotnet/sdk:5.0
LABEL maintainer="Andres Olivares <andyolivares@gmail.com>"

# Update OS packages
RUN apt-get update && apt-get upgrade -y --no-install-recommends
RUN mkdir -p /usr/share/man/man1 /usr/share/man/man2

# Install OpenJDK 11
RUN apt-get install -y --no-install-recommends openjdk-11-jre-headless