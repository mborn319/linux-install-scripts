# Install Java Stuff

###
# PRE-INSTALL: Create a bin directory in user's home folder, and make it findable.
# This is only necessary for binaries downloaded and "installed" into the ~/bin folder.
# Like CommandBox.
###

# 
mkdir ~/bin && echo 'PATH=$PATH:/home/$USER/bin' >> ~/.bash_profile

# Java
apt install default-jre

###
# Install CFLint 1.4.0
###
cd ~ && curl -O https://github.com/cflint/CFLint/releases/download/CFLint-1.4.0/CFLint-1.4.0-all.jar
# Final step: Copy this file path into your vscode cflint extension config "jarPath" setting.
# /home/USERNAME/CFLint-1.4.0-all.jar

###
# Install Commandbox 4.4.
# Different installation method: Download via curl, and stick in the bin directory.
# Please note, this example is NOT working!
###
#curl -O https://www.ortussolutions.com/parent/download/commandbox/type/linux-jre64 ~/Downloads
#unzip ~/Downloads/commandbox-jre-linux64-4.2.0.zip && mv commandbox-jre-linux64-4.2.0/* /home/$USER/bin

###
# Install Commandbox 4.4.
# NEW installation method copied from the docs
# https://commandbox.ortusbooks.com/setup/installation
###
curl -fsSl https://downloads.ortussolutions.com/debs/gpg | apt-key add -
echo "deb http://downloads.ortussolutions.com/debs/noarch /" | tee -a /etc/apt/sources.list.d/commandbox.list
apt-get update && apt-get install commandbox
