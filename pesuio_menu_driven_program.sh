#!/bin/bash
clear

menu(){
	echo "----------------------------" | lolcat
	echo  
	figlet  "MENU " | lolcat
	echo 
	echo "----------------------------"  | lolcat
	echo
	echo "1. Launch htop to see processor acitvities" | lolcat
	echo "2. Users currently logged in" | lolcat 
	echo "3. Show CPU info" | lolcat
	echo "4. Show filesystem" | lolcat
	echo "5. Show graphics processor" | lolcat
	echo "6. Open Network manager" | lolcat
	echo "7. Show pci devices in tree format"| lolcat
	echo "8. Show space available on hard disk" | lolcat 
	echo "9. Flex arch btw :)" | lolcat
        echo "10.Cool parrot"|lolcat	
	echo "11. Exit" | lolcat
	echo
	echo "----------------------------" | lolcat
	echo
	echo "Please enter option [1 - 11]:" | cowsay | lolcat   
}

option=y

while [ "$option" != "11" ]
do
	menu

	read option

	case $option in
		1) htop;; # the user has to press [q] to exit and get back to main menu 
		2) who;; 
		3) cat /proc/cpuinfo | grep -Em 4 "model name|cpu MHz|cpu cores|vendor_id" | lolcat -a;;
		4) lsblk;;
		5) lspci -v | grep -i vga;;
		6) nmtui;;
		7) lspci -vt;;
		8) df -i;;
		9) neofetch | lolcat -a;;
		10)curl parrot.live;;
		11) break;; # exit menu
		*) echo "Wrong option";; # * means anything else
esac

read -p "Press [enter] key to continue..." 
clear

done

clear

