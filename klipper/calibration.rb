require 'bigdecimal/util'

initial_mark_distance = BigDecimal("70.01")
requested_extrude_distance = BigDecimal(50)
subsequent_mark_distance = BigDecimal("20.11")

actual_extrude_distance = initial_mark_distance - subsequent_mark_distance

previous_rotation_distance = BigDecimal("7.99058723472")
rotation_distance = previous_rotation_distance * actual_extrude_distance / requested_extrude_distance
rotation_distance.to_s
rotation_distance.to_f

# TUNING_TOWER COMMAND=SET_PRESSURE_ADVANCE PARAMETER=ADVANCE START=0 FACTOR=.005
start = 0
measured_height = BigDecimal("21.94")
factor = BigDecimal("0.005")
ressure_advance = 0 + measured_height * factor
ressure_advance.to_f
