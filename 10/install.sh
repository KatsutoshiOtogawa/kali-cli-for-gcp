#

echo "# kali-last-snapshot is " >> /etc/apt/sources.list
echo "deb http://http.kali.org/kali kali-last-snapshot main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://http.kali.org/kali kali-last-snapshot main contrib non-free" >> /etc/apt/sources.list
sudo mkdir /etc/apt/preferences.d

curl 10/etc/apt/preferences.d/kali-linux.pref
cat < $file_path/etc/apt/preferences.d/kali-linux.pref >> /etc/apt/preferences.d/kali-linux.pref
wget -qO- https://archive.kali.org/archive-key.asc | apt-key add
