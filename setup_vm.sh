# setup_vm.sh
# Last Modified: 7/15/20
# Author: Matthew Yu (matthewjkyu@gmail.com)
# This script runs on first startup, setting up the VM and installing software for use Doing so reduces the size of the VM image for export purposes.

# When developing a new VM image, the developer should prepare the following:
# * manually install git, cowsay, and lolcat
#   * sudo apt install git cowsay lolcat
# * clone RASBox
#   * cd ~/
#   * git clone https://github.com/ut-ras/RASBox.git
# * on first setup, insert a prompt to trigger setup_vm.sh (on every startup until the setup script has executed successfully)
#   * at the end of ~/.bashrc: cowsay -f tux "Welcome to RASBox! If this is your first time here, check out our RASBox guide. Just enter in the command 'razzle'!" | lolcat
# * insert a prompt to read the RASbox_User_Guide (always on terminal startup)
# Additionally, tell the user to follow the prompts in the command line.

# TODO: check if flag in env variables indicates that setup is complete
if [ $INIT_SETUP -eq 1 ]
then
	echo "The INIT_SETUP flag in ~/.profile has already been set. Early exit."
	exit
fi

echo "Starting VM setup script."
echo "This might take a while. The terminal will prompt you to input the password (ReallyAwesomeStudents), and to confirm installing software. Say 'Y' when asked to install software."

# make sure ubuntu is up to date
sudo apt update
# sudo apt upgrade
# lubuntu specific - ignored if the user tries to update from prompt beforehand
sudo /usr/bin/lubuntu-upgrader --full-upgrade

# install GIMP
# TODO: prompt to install gimp or skip
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

# change flag in env variables to no longer prompt to run this script
sudo sed -i 's/export INIT_SETUP=0/export INIT_SETUP=1/' ~/.profile

echo "The VM setup script has successfully completed. You may want to reboot your machine for some changes to take effect."
echo "To open up the RASBox User Guide, type 'razzle' into the command line interface."
