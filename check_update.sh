#Check Update
sed -i 's/#checkupdate/  config/g' Vagrantfile
sed -i 's/$true_or_false/$boolean/g' Vagrantfile
