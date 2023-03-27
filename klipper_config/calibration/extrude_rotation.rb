# https://www.klipper3d.org/Rotation_Distance.html

require 'bigdecimal/util'

initial_mark_distance = BigDecimal("70.01")
requested_extrude_distance = BigDecimal(50)
subsequent_mark_distance = BigDecimal("20.11")

actual_extrude_distance = initial_mark_distance - subsequent_mark_distance

previous_rotation_distance = BigDecimal("7.99058723472")
rotation_distance = previous_rotation_distance * actual_extrude_distance / requested_extrude_distance

puts "extruder rotation_distance: #{rotation_distance.to_f}"
