#PROVIDER SET HARDWARE
sed -i 's/#vmprovider/  /g' Vagrantfile
clear

#VBOXGUI
sed -i 's/#displayvboxgui/    /g' Vagrantfile
sed -i 's/$gui_boolean/gui_boolean_selected/g' Vagrantfile

#Provider end
sed -i 's/#provisionend//g' Vagrantfile
clear

