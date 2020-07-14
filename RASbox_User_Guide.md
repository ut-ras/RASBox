# RASbox User Guide
**NOTE: try CTRL+SHIFT+V to view the formatted version for this guide.**

If you're reading this guide, that means that you have successfully gotten your virtual machine up and running. **Congratulations!** With a few more steps, you can now start programming with your TM4C and start building your robot!

---
## What's in the RASbox?
We've installed a couple of utilities in this virtual machine image for you that we think may improve your experience developing over the next couple months.
* **VS Code** - the code editor you're using now, is our recommendation to write and develop code for your robot to run on. It's highly customizable (see the extensions button on the left bar), and we've preinstalled some packages for you, including the Prettier Code Formatter, Todo highlighting, and C/C++ syntax highlighting.
* **GIMP** - GIMP, also known as GNU Image Manipulation Program, is your one stop shop for editing pictures and making diagrams. You can use this to help design your robot! Some tutorials are listed [here](https://www.gimp.org/tutorials/).

We've also added a couple of resources online to help you along that we *highly recommend* that you read:
* A comprehensive online guide to the Robotathon competition can be found [here](https://docs.google.com/presentation/d/1IWgDXBhpaYGzLw1zLPfskz0CDPovpUTAw0APQvpxu4c/edit#slide=id.g8115da06b0_0_65). This guide covers many things, including: 
    * how to design parts of your robot, 
    * how to interface with sensors and actuators,
    * and competition specific tips and tricks.
* A bunch of our API documentation and tutorials are listed in our Rasware [wiki](https://github.com/ut-ras/Rasware/wiki) for you to take advantage of.

---
## Okay, what's next?
You need to fork and compile your own version of RASware before you and your team can get started with working on your robot software. Head on over to our [RASware repository](https://github.com/ut-ras/Rasware) and click on the fork button on the top right. You may also be prompted to create your own github account before forking. 

After you successfully fork your project, clone it into the `~/RASBox` directory we've set up. You can follow step 2 of this [guide](https://help.github.com/en/github/getting-started-with-github/fork-a-repo#step-2-create-a-local-clone-of-your-fork) if you need help.

```
cd ~/RASBox
git clone URL
```

After you fork your repo, run the set up script in `~/RASBox`. You may be prompted to enter in the password, which is `ReallyAwesomeStudents` (RAS)!
The setup script command is:

`sh setup_rasware.sh`

**NOTE:** You may need to fix the display resolution after the script runs. Right click on the background and click on `Display Settings` to so.

What this script does is unpack the tools needed to run the TM4C, StellarisWare, build it, set up the udev (userpace /dev, a device manager) rules, and then procedurally build all of the other folders in the RASWare workspace.

Once this script is complete, you should have seen that your TM4C now runs if you call `make flash` in the `~/RASBox/Rasware/RASDemo` folder.

Your setup is now complete!
Now, jump over to step 1 in `~/RASBox/Rasware/RASwareCrashCourse.md` for further instructions on how to start developing on your TM4C!

---
## Something's broken!/I still need help...
Please feel free to message a RAS leader on the UT RAS Slack to troubleshoot your problems or discuss any issues you have. Alternatively, you can message or email the Robotathon Steering Committee Heads (@Robotic Fish; matthewjkyu@gmail.com) (@Burak Biyikli).