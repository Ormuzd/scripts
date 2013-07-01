#!/bin/sh
#set +x
SPICEGTK="spice-gtk-0.20.tar.bz2"
if [-f $SPICEGTK ];then
    echo $SPICEGTK exists
else
    sudo wget http://spice-space.org/download/gtk/spice-gtk-0.20.tar.bz2
fi
sudo tar -xf spice-gtk-0.20.tar.bz2
#essential when compile
sudo yum -y install gtk3-devel
sudo yum -y install pulseaudio-libs-devel
sudo yum -y install libgudev1-devel
cd spice-gtk-0.20
sudo ./configure --enable-usbredir > /dev/null
sudo make > /dev/null
sudo make install > /dev/null
cd ..
sudo rm -f spice-gtk-0.20.tar.bz2 
sudo rm -rf spice-gtk-0.20