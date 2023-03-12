require 'bigdecimal/util'

# TUNING_TOWER COMMAND=SET_PRESSURE_ADVANCE PARAMETER=ADVANCE START=0 FACTOR=.005
start = 0
measured_height = BigDecimal("21.94")
factor = BigDecimal("0.005")
ressure_advance = 0 + measured_height * factor
ressure_advance.to_f
