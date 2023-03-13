#!/bin/bash

if ! grep -xq "[include sv01/main.cfg]" ~/printer_data/config/printer.cfg; then
	echo "[include sv01/main.cfg]" >> ~/printer_data/config/printer.cfg
fi

if ! grep -xq "# [include sv01/resonance.cfg]" ~/printer_data/config/printer.cfg || ! grep -xq "[include sv01/resonance.cfg]" ~/printer_data/config/printer.cfg; then
	echo "# [include sv01/resonance.cfg]" >> ~/printer_data/config/printer.cfg
fi

# links files
ln -sf ~/Sovol-SV01/klipper_config ~/printer_data/config/sv01

# add crontab
(crontab -l 2>/dev/null; echo "* * * * * cd /home/pi/Sovol-SV01; git pull") | crontab -
