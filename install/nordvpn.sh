LOCATION=~/nordvpn
rm -R $LOCATION
wget https://downloads.nordcdn.com/configs/archives/servers/ovpn.zip
mkdir -p $LOCATION
unzip ovpn.zip -d $LOCATION
rm ovpn.zip