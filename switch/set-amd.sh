echo 'Removing nvidia prime setup......'

rm -rf /etc/X11/xorg.conf.d/99-nvidia.conf
rm -rf /etc/modprobe.d/99-nvidia.conf
rm -rf /etc/modules-load.d/99-nvidia.conf
rm -rf /usr/share/sddm/scripts/Xsetu

sleep 1
echo 'Setting amd only mode.........'
cp /etc/switch/amd/amd-xorg.conf /etc/X11/xorg.conf.d/99-amd.conf
cp /etc/switch/amd/amd-modprobe.conf /etc/modprobe.d/99-amd.conf
cp /etc/switch/amd/no-optimus.sh /usr/share/sddm/scripts/Xsetup
sleep 1
echo 'Done! After reboot amd only mode will be activated .'


#xf86-video-amdgpu only