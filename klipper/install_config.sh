#!/bin/bash

# show messages
echo "" >> ~/printer_data/config/printer.cfg
echo "# Sovol SV01" >> ~/printer_data/config/printer.cfg
echo "[include main.cfg]" >> ~/printer_data/config/printer.cfg

# links files
ln -sf ~/Sovol-SV01/klipper/main.cfg ~/printer_data/config/main.cfg
ln -sf ~/Sovol-SV01/klipper/software.cfg ~/printer_data/config/software.cfg
ln -sf ~/Sovol-SV01/klipper/hardware.cfg ~/printer_data/config/hardware.cfg
ln -sf ~/Sovol-SV01/klipper/resonance.cfg ~/printer_data/config/resonance.cfg
ln -sf ~/Sovol-SV01/klipper/macros ~/printer_data/config/macros
