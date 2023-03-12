#!/bin/bash

# show messages
echo "" >> ~/printer_data/config/printer.cfg
echo "# Sovol SV01" >> ~/printer_data/config/printer.cfg
echo "[include sv01/main.cfg]" >> ~/printer_data/config/printer.cfg
echo "# [include sv01/resonance.cfg]" >> ~/printer_data/config/printer.cfg

# links files
ln -sf ~/Sovol-SV01/klipper/ ~/printer_data/config/sv01
