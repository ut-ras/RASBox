# setup_vm.sh
# Last Modified: 7/14/20
# Author: Matthew Yu (matthewjkyu@gmail.com)
# This script runs on first startup, setting up the VM and installing software for use Doing so reduces the size of the VM image for export purposes.

# When developing a new VM image, the developer should prepare the following:
# * manually install git, cowsay, and lolcat
#   * sudo apt install git && cowsay && lolcat
# * clone RASBox
#   * cd ~/
#   * git clone https://github.com/ut-ras/RASBox.git
# * on first setup, insert a prompt to trigger setup_vm.sh (on every startup until the setup script has executed successfully)
#   * at the end of ~/.bashrc: cowsay -f tux "Welcome to RASBox! If this is your first time here, check out our RASBox guide. Just enter in the command 'razzle'!" | lolcat
# * insert a prompt to read the RASbox_User_Guide (always on terminal startup)
# Additionally, tell the user to follow the prompts in the command line.

# TODO: check if flag in env variables indicates that setup is complete

echo "Starting VM setup script. This might take a while, and be aware that the terminal will prompt you for input at times. The password is 'ReallyAwesomeStudents', and say 'Y' when asked to install software."

# make sure ubuntu is up to date
sudo apt update
sudo apt upgrade

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

# TODO: change flag in env variables to no longer prompt to run this script

echo "The VM setup script has successfully completed. Opening up the RASBox User Guide."

# open up vscode to the RASBox guide
razzle