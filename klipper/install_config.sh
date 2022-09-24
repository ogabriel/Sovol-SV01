#!/bin/bash

echo "" >> ~/klipper_config/printer.cfg
echo "# Sovol SV01" >> ~/klipper_config/printer.cfg
echo "[include main.cfg]" >> ~/klipper_config/printer.cfg

ln -sf ~/Sovol-SV01/klipper/main.cfg ~/klipper_config/main.cfg
ln -sf ~/Sovol-SV01/klipper/software.cfg ~/klipper_config/software.cfg
ln -sf ~/Sovol-SV01/klipper/hardware.cfg ~/klipper_config/hardware.cfg
ln -sf ~/Sovol-SV01/klipper/macros ~/klipper_config/macros
