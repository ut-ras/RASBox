echo "Setting up... Enter in your password when prompted."
# install dependencies
sudo apt-get install git build-essential openocd screen gcc-arm-none-eabi gdb libnewlib-arm-none-eabi
# Unpack Stellarisware
cd Rasware/Downloads
tar vfx StellarisWare.tar.bz2
cd StellarisWare
make
cd ..
sudo mv StellarisWare /usr/local/lib
rm StellarisWare.tar.bz2
# Add LM4F rule to UDev
wget https://raw.githubusercontent.com/ut-ras/Rasware/master/RASLib/51-lm4f.rules
sudo mv 51-lm4f.rules /etc/udev/rules.d
sudo udevadm control --reload
sudo udevadm trigger
# Compile files
cd ../RASLib
make
cd ../RASTemplate
make
cd ../RASDemo
make

echo -e "\n\nReady to go! To test to see if your setup is correct, cd into the RASDemo folder (\`cd ~/RAS/Rasware/RASDemo\`), plug in your TM4C through the USB, turn it on with debug mode, and call 'make flash'!"
echo "If your make flash results in an error, try reconnecting and resetting the device, and try again."
echo "The TM4C may not appear to do anything at first. Try pressing the reset button and it should start blinking green."
echo "For further help, consult a RAS leader (\`'@Robotic Fish\`' on slack)."
echo "Now jump back to the RASbox User Guide using razzle!"
