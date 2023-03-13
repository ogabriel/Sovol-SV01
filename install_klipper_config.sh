#!/bin/bash

echo "Adding import main.cfg to printer.cfg"
if ! grep -xF "[include sv01/main.cfg]" ~/printer_data/config/printer.cfg; then
	echo "[include sv01/main.cfg]" >> ~/printer_data/config/printer.cfg
fi

echo "Adding import resonance.cfg to printer.cfg"
if ! grep -xF "# [include sv01/resonance.cfg]" ~/printer_data/config/printer.cfg && ! grep -xq "[include sv01/resonance.cfg]" ~/printer_data/config/printer.cfg; then
	echo "# [include sv01/resonance.cfg]" >> ~/printer_data/config/printer.cfg
fi

echo "Adding link to sv01 other files"
ln -sf ~/Sovol-SV01/klipper_config ~/printer_data/config/sv01

echo "Add crontab"
if ! crontab -l | grep -F "* * * * * cd /home/pi/Sovol-SV01; git pull"; then
	(crontab -l 2>/dev/null; echo "* * * * * cd /home/pi/Sovol-SV01; git pull") | crontab -
fi
