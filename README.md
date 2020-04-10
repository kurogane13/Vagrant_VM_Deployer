# Vagrant_VM_Deployer
*This program is a bash shell CLI based interace, to deploy a vitrual machine within a few minutes, using Vagrant technology. Author: Gustavo Wydler Azuaga - 06/10/2019
--------------------------------------------------------------------------------------------------------------------
Note: You can view screenhots of the program in the Screenshots folder
--------------------------------------------------------------------------------------------------------------------
Setting up the program:

* The program requires you to download and install vagrant for linux debian. You can do so by downloading a vagrant version:

  1. wget https://releases.hashicorp.com/vagrant/2.2.7/vagrant_2.2.7_x86_64.deb
  
  2. sudo dpkg -i vagrant_2.2.7_x86_64.deb

* Clone the repo (git clone) to your /home/$USER folder

* Rename Vagrant_VM_Deployer to VAGRANTFILES

  - mv Vagrant_VM_Deployer VAGRANTFILES

* Access the VAGRANTFILES folder

* To run the program: open a linux terminal and run the bash file Deploy-Vagrant-vm.sh.
  bash Deploy-Vagrant-vm.sh
  
Optional: if you want to launch the program with a Desktop icon, you can use the 'Vagrant_Launcher.desktop' file. Just change the path replacing the $USER var to your user, and and you can run it from your home folder. Remember all files should be in your home folder.
 
--------------------------------------------------------------------------------------------------------------------

Program functionalities and steps: 

*First, you will be asked to create a project. The name you provide for it will create a folder in the working directory.

*Next, You will be presented with an interactive menu with numbered options, in which you can navigate to pre-set your VM before deployment.

Configuration Modes:

- VM OS/VERSION		 
- VM NAME			 
- PRIVATE STATIC IP		 
- PUBLIC STATIC IP		 
- DHCP			 
- FORWARDED PORT		 
- RAM ALLOCATION		 
- CPU CORES ALLOCATION	 
- SYNCED FOLDER	

Viewing Modes:

- VIEW VAGRANTFILE		 
- VIEW OS/VERSION
- VIEW VM NAME
- VIEW PRIVATE STATIC IP
- VIEW PUBLIC STATIC IP
- VIEW DHCP INSTANCE
- VIEW FORWARDED PORT
- VIEW RAM ALLOCATION
- VIEW CPU CORES ALLOCATION
- VIEW SYNCED FOLDER

Setup or Deploy and Destoy:

- DEPLOY VAGRANT VM
- DESTROY VAGRANT VM
--------------------------------------------------------------------------------------------------------------------

*The config options in the menu alter and edit the Vagrantfile option by option, 1 time, until you decide to Deploy the vm.

*You can view the complete vagrant file, or better still, each module of it (VIEW OS/VERSION, VIEW VM NAME, VIEW RAM ALLOCATION, etc) as many times you want.

--------------------------------------------------------------------------------------------------------------------

Give it a try, and i hope you like it!



