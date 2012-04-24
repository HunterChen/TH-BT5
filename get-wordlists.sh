#/bin/sh
echo "Get Wordlists script"
echo -e "\e[37m(c) Thom Hastings 2011 New BSD license\e[0m"
echo -e "designed for \e[31mBack|Track 5r2\e[0m"
cd /pentest/passwords/wordlists
echo
echo -e "Downloading \e[33mUNIQPASS\e[0m passwords.txt"
wget http://dazzlepod.com/site_media/txt/passwords.txt
echo
echo -e "Downloading \e[33m62kcmnpass\e[0m..."
wget http://isdpodcast.com/files/62kcmnpass.tar.gz
echo "Decompressing..."
tar -xvf 62kcmnpass.tar.gz
echo "Cleaning up..."
rm 62kcmnpass.tar.gz
cd ..
echo -e "Checking out \e[33misdpodcast\e[0m wordlist repository (BIG)..."
svn checkout http://svn.isdpodcast.com/wordlists wordlists
echo
echo -e "\e[32mDONE\e[0m"