# RASBox
Setup instructions and scripts for your VM image.

## Files
- RASBox_User_Guide.md
  - user instructions for using setup_rasware.sh and pointing to features and additional content for development.
- README.md (this file)
- setup_rasware.sh
  - A script to install and setup RASWare on your VM.
  - If the script execution is a success, you should be able to flash RASDemo to your device immediately (requires setting up the VM to use port forwading.
  - This script **requires** that the Rasware repository is forked and cloned in the same folder.
- setup_vm.sh
  - A script for the RAS VM image to (almost) automatically download and install software and packages to get up and running.
  - This script currently supports the following distributions: Lubuntu 20.04.
  - Development instructions for creating images that'll work with this script are provided in the Wiki.
  - The purpose of this script is to minimize the .ova size of the VM image for distribution.
