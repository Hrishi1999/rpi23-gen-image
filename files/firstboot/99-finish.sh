logger -t "rc.firstboot" "Reload systemd manager configuration"
systemctl daemon-reload
systemctl restart networking.service
systemctl restart systemd-networkd.service
logger -t "rc.firstboot" "First boot actions finished"
rm -f /etc/rc.firstboot
rm -rf /usr/share/xsessions/lightdm-xsession.desktop
sed -i '/.*rc.firstboot/d' /etc/rc.local
