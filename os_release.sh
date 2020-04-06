
#Os/Release
echo "######################################################"
echo "VAGRANT OS/RELEASE SELECTION WIZARD."
echo "######################################################"
echo "SUGGESTED OPERATING SYSTEMS AND RELEASES,"
echo "ARE DETAILED BELOW: "
echo "--------------------"
echo "- ubuntu/trusty64"
echo "- ubuntu/xenial64"
echo "- debian/jessie64"
echo "- centos/7"
echo "------------------------------------------------------"
echo "PLease copy and paste below the OS/RELEASE, you want"
echo "Vagrant to Deploy, or you can paste any valid matching"
echo "OS/RELEASE from: https://app.vagrantup.com/boxes/search"
echo "------------------------------------------------------"
echo "AFTER, COPYING AND PASTING/OR TYPING THE PARAMETER,"
echo "PRESS ENTER..."
echo "------------------------------------------------------"
read selected_os
echo "------------------------------------------------------"
sed -i 's/#releaseconfigconfig/  config/g' Vagrantfile
echo "YOU ENTERED: $selected_os"
echo "PRESS ENTER TO CONFIRM NOW, OR CTRL+C TO ABORT..."
read 
sed -i '/os_release/a\'"  config.vm.box = '${selected_os}'#osrelease" Vagrantfile
echo "------------------------------------------------------"

#comment line
sed -i 's/.*os_release/#&/' Vagrantfile
#uncomment line
sed -i '/os_release/d' Vagrantfile
#sed -i 's/.*os_release/ &/' Vagrantfile
echo "SHOWING OS/RELEASE line instanced in Vagranfile: "
cat Vagrantfile | grep osrelease
echo "------------------------------------------------------"
echo "Variable parsed to Vagrantfile. Press enter to close"
echo "The Session now..."
read

