# Create a jenkins Dockerfile which include npm

FROM jenkins/jenkins:lts

# Switch to root user
USER root

# To add a user with a sudo access 
# Add a new user named "admin"
# RUN useradd -m -s /bin/bash admin && \
#     echo "admin:password" | chpasswd && \
#     adduser admin sudo

# Install Node.js and npm
RUN apt-get update && apt-get install -y \
    curl \
    gnupg \
 && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
 && apt-get install -y nodejs \
 && npm install -g npm

# Switch back to jenkins user
USER jenkins
