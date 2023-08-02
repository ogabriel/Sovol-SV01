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
if [ -d ~/printer_data/config/sv01 ]; then
    mv ~/printer_data/config/sv01 ~/old_sv01
fi
ln -sf ~/Sovol-SV01/klipper_config ~/printer_data/config/sv01

echo "Add crontab to Sovol config"
if ! crontab -l | grep -F "* * * * * cd /home/pi/Sovol-SV01; git pull"; then
	(crontab -l 2>/dev/null; echo "* * * * * cd /home/pi/Sovol-SV01; git pull") | crontab -
fi

echo "Download KAMP"
cd
git clone https://github.com/kyleisah/Klipper-Adaptive-Meshing-Purging.git
ln -s ~/Klipper-Adaptive-Meshing-Purging/Configuration printer_data/config/KAMP

echo "Import KAMP"
if ! grep -xF "[include KAMP/*cfg]" ~/printer_data/config/printer.cfg; then
	echo "[include KAMP/*cfg]" >> ~/printer_data/config/printer.cfg
fi
