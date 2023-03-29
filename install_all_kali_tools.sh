clear
echo "Updating/Upgrading the system"
sudo apt-get -y update
sudo apt-get -y upgrade
clear
echo "Grabbing tools..."
apt search kali-tools | cut -d "/" -f 1 | grep -v "Sorting..." | grep -v "Kali's" | grep -v "Full Text Search..." > all_kali_tools.txt
clear
echo "Installing tools..."
xargs -a all_kali_tools.txt sudo apt-get install
