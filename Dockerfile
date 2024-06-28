FROM python:latest

# Set the environment variable for non-interactive installation
ENV DEBIAN_FRONTEND=noninteractive

# Update the package list and install required packages
RUN apt-get update && \
    apt-get install -y software-properties-common sshpass openssh-client && \
    apt-get clean

# Install Ansible
RUN pip install ansible

# Create a working directory
WORKDIR /ansible

# Set the default command to keep the container running
CMD ssh-keyscan lab1 lab2 lab3 lab4 lab5 >> /etc/ssh/ssh_known_hosts && tail -f /dev/null


