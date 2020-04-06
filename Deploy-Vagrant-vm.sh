mkdir -p /home/$USER/VAGRANTFILES
cp /home/$USER/VAGRANTFILES/Vagrantfile Vagrantfile
cp Vagrantfile /home/$USER/VAGRANTFILES/
clear
echo "###################################################"
echo "VAGRANTFILE VM SETUP WIZARD STARTED"
echo "###################################################"
echo "PRESS ENTER TO START NOW..."
read
echo "---------------------------------------------------"
echo "PROVIDE A NAME FOR YOUR PROJECT/VM, WE WILL CREATE"
echo "A DIRECTORY FOR IT NOW..."
read vagrant_project
echo "---------------------------------------------------"
echo "ENTERED PROJECT IS: $vagrant_project"
echo "---------------------------------------------------"
mkdir $vagrant_project
echo "CREATED PROJECT $vagrant_project in:"
pwd
echo "---------------------------------------------------"
cd $vagrant_project
echo "VAGRANT PROJECT PATH FILE IS: "
pwd
space=" "

cp -r /home/$USER/VAGRANTFILES/Vagrantfile$space .
cp -r /home/$USER/VAGRANTFILES/os_release.sh$space .
cp -r /home/$USER/VAGRANTFILES/vm_ram.sh$space .
cp -r /home/$USER/VAGRANTFILES/vm_name.sh$space .
cp -r /home/$USER/VAGRANTFILES/vm_cpu.sh$space .
cp -r /home/$USER/VAGRANTFILES/dhcp_ip.sh$space .
cp -r /home/$USER/VAGRANTFILES/private_static.sh$space .
cp -r /home/$USER/VAGRANTFILES/public_static.sh$space .
cp -r /home/$USER/VAGRANTFILES/forwarded_port.sh$space .
cp -r /home/$USER/VAGRANTFILES/synced_folder.sh$space .
echo "........................................................."
echo "SELECT ONE OF THE OPTIONS IN THE MENU TO SETUP THE Vagrantfile."
echo "........................................................."
options=("- VM OS/VERSION" "- VM NAME" "- PRIVATE STATIC IP" "- PUBLIC STATIC IP" "- DHCP" "- FORWARDED PORT" "- RAM ALLOCATION" "- CPU CORES ALLOCATION" "- SYNCED FOLDER" "- VIEW VAGRANTFILE" "- VIEW OS/VERSION" "- VIEW VM NAME" "- VIEW PRIVATE STATIC IP" "- VIEW PUBLIC STATIC IP" "- VIEW DHCP INSTANCE" "- VIEW FORWARDED PORT" "- VIEW RAM ALLOCATION" "- VIEW CPU CORES ALLOCATION" "- VIEW SYNCED FOLDER" "- DEPLOY VAGRANT VM" "- DESTROY VAGRANT VM")
select opt in "${options[@]}"
do 
    case $opt in

        "- VM OS/VERSION")
            echo "-------------------------------------"
            echo "MODE 1 - VM OS/VERSION ACCESED."
            echo "PRESS ENTER TO RUN SCRIPT NOW..."
            read enter
            bash os_release.sh
            
            ;;

        "- VM NAME")
            echo "-------------------------------------"
            echo "MODE 2 - VM NAME ACCESSED."
            echo "PRESS ENTER TO RUN SCRIPT NOW..."
            read enter
            bash vm_name.sh
            ;;

        
        "- PRIVATE STATIC IP")
            echo "-------------------------------------"
            echo "MODO 3 - PRIVATE STATIC IP ACCESSED"
            echo "PRESS ENTER TO RUN SCRIPT NOW..."
            read enter
            bash private_static.sh
            ;;

        "- PUBLIC STATIC IP")
            echo "-------------------------------------"
            echo "MODO 4 - PUBLIC STATIC IP ACCESSED"
            echo "PRESS ENTER TO RUN SCRIPT NOW..."
            read enter
            bash public_static.sh
            ;;

        "- DHCP")
            echo "-------------------------------------"
            echo "MODE 5 - DHCP ACCESSED"
            echo "PRESS ENTER TO RUN SCRIPT NOW..."
            read enter
            bash dhcp_ip.sh
            ;;

	"- FORWARDED PORT")
            echo "-------------------------------------"
            echo "MODO 6 - FORWARDED PORTS ACCESSED"
	    echo "PRESS ENTER TO RUN SCRIPT NOW..."
            read enter
            bash forwarded_port.sh
            ;;

        "- RAM ALLOCATION")
            echo "-------------------------------------"
            echo "MODO 7 - RAM ALLOCATION ACCESSED"
            echo "PRESS ENTER TO RUN SCRIPT NOW..."
            read enter
            bash vm_ram.sh
            ;;

        "- CPU CORES ALLOCATION")
            echo "-------------------------------------"
            echo "MODO 8 - CPU CORES ALLOCATION ACCESSED"
            echo "PRESS ENTER TO RUN SCRIPT NOW..."
            read enter
            bash vm_cpu.sh
            ;;

        "- SYNCED FOLDER")
            echo "-------------------------------------"
            echo "MODE 9 - SYNCED FOLDER ACCESSED"
            echo "PRESS ENTER TO RUN SCRIPT NOW..."
            read enter
            bash synced_folder.sh
            ;;

        "- VIEW VAGRANTFILE")
            echo "-------------------------------------"
            echo "MODE 10 - VIEW VAGRANTFILE ACCESSED"
            echo "PRESS ENTER TO VIEW VAGRANTFILE NOW..."
            read enter
            cat Vagrantfile
            echo "-------------------------------------"
            ;;

        "- VIEW OS/VERSION")
            echo "-------------------------------------"
            cat Vagrantfile | grep releaseconfig
            cat Vagrantfile | grep osrelease
            echo "-------------------------------------"
            ;;

        "- VIEW VM NAME")
            echo "-------------------------------------"
            cat Vagrantfile | grep v.name
            echo "-------------------------------------"
            ;;

        "- VIEW PRIVATE STATIC IP")
            echo "-------------------------------------"
            cat Vagrantfile | grep privatestatic
            echo "-------------------------------------"
            ;;

        "- VIEW PUBLIC STATIC IP")
            echo "-------------------------------------"
            cat Vagrantfile | grep public_network
            echo "-------------------------------------"
            ;;
        
        "- VIEW DHCP INSTANCE")
           echo "-------------------------------------"
           cat Vagrantfile | grep dhcp
           echo "-------------------------------------"
           ;;

         "- VIEW FORWARDED PORT")
           echo "-------------------------------------"
           cat Vagrantfile | grep forwarded_port
           echo "-------------------------------------"
           ;;

         "- VIEW RAM ALLOCATION")
           echo "-------------------------------------"
           cat Vagrantfile | grep v.memory
           echo "-------------------------------------"
           ;;

         "- VIEW CPU CORES ALLOCATION")
           echo "-------------------------------------"
           cat Vagrantfile | grep v.cpus
           echo "-------------------------------------"
           ;;

         "- VIEW SYNCED FOLDER")
           echo "-------------------------------------"
           cat Vagrantfile | grep vm.synced_folder
           echo "-------------------------------------"
           ;;

          "- DEPLOY VAGRANT VM")
           echo "-------------------------------------"
           echo "VAGRANT DEPLOYMENT MODE ACCESSED."
           echo "TO DEPLOY YOUR VAGRANT VM PRESS ENTER(ctrl+c to abort)..."
           read
           vagrant up
           echo "-------------------------------------"
           ;;
  
          "- DESTROY VAGRANT VM")
           echo "-------------------------------------"
           echo "WARNING VAGRANT DESTRUCION MODE ACCESSED."
           echo "TO DESTROY YOUR VAGRANT VM PRESS ENTER NOW(ctrl+c to abort)..."
           read
           vagrant destroy
           echo "-------------------------------------"
           ;;

        *) echo "-------------------------------------"
	   echo "PLEASE ONLY SELECT NUMBERS FROM THE MENU!";;
    esac
done
