# Description: This is a testing-env for my ansible playbooks.
# Use the latest version of Ubuntu
FROM ubuntu:latest

# Set the environment variable
ENV DEBIAN_FRONTEND=noninteractive

# Install tzdata package separately
RUN apt-get update -y
RUN apt-get install -y tzdata

# Set your timezone
RUN ln -fs /usr/share/zoneinfo/Etc/UTC /etc/localtime && dpkg-reconfigure --frontend noninteractive tzdata

# Install sudo
RUN apt-get install -y sudo

# Create a new user named 'younis'
RUN useradd -m younis && echo "younis:younis" | chpasswd && adduser younis sudo

# Allow 'younis' to run sudo commands without a password
RUN echo 'younis ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

# Switch to the new user
USER younis

# Set the working directory
WORKDIR /home/younis

# Clone the ansible-playbook 
COPY . .

# Install necessary packages and setup ansible
RUN sudo apt-get install -y curl xz-utils git ansible
