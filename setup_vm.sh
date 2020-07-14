# setup_vm.sh
# Last Modified: 7/14/20
# Author: Matthew Yu (matthewjkyu@gmail.com)
# This script runs on first startup, setting up the VM and installing software for use Doing so reduces the size of the VM image for export purposes.
# When developing a new VM image, the developer should manually install git and clone RASBox and point the startup script to .bashrc.

# # install git
# sudo apt install git
# # install RASBox files
# cd ~/
# git clone https://github.com/ut-ras/RASBox.git

# make sure ubuntu is up to date
echo 'ReallyAwesomeStudents' | sudo -S sudo apt update 
# we echo our password to stdin to bypass any need for prompting on setup.
# we would consider it a security flaw, but the password isn't really a secret..
echo 'ReallyAwesomeStudents' | sudo -S sudo apt upgrade

# install GIMP
sudo add-apt-repository ppa:otto-kesselgulasch/gimp
sudo apt-get update
sudo apt-get install gimp

# install VSCode - https://linuxize.com/post/how-to-install-visual-studio-code-on-ubuntu-18-04/
sudo apt install software-properties-common apt-transport-https wget
wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main"
sudo apt update
sudo apt install code

# install VSCode extensions
code --install-extension ms-vscode.cpptools
code --install-extension ms-python.python
code --install-extension esbenp.prettier-vscode
code --install-extension Gruntfuggly.todo-tree
code --install-extension vscode-icons-team.vscode-icons