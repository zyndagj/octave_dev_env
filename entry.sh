#!/bin/bash

###################################################
# Create user
###################################################

# No password created
#adduser --disabled-password --gecos "" --uid $1 --home /home/$3 --shell /bin/bash $3

# Password required
adduser --gecos "" --uid $1 --home /home/$3 --shell /bin/bash $3

# UNCOMMENT to add user to sudo
usermod -aG sudo $3

###################################################
# Switch to user
###################################################
su -l $3
