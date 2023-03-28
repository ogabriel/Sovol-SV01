# https://www.klipper3d.org/Rotation_Distance.html

require 'bigdecimal/util'

initial_mark_distance = BigDecimal("71.35")
requested_extrude_distance = BigDecimal(50)
subsequent_mark_distance = BigDecimal("20.76")

actual_extrude_distance = initial_mark_distance - subsequent_mark_distance

previous_rotation_distance = BigDecimal("23.88")
rotation_distance = previous_rotation_distance * actual_extrude_distance / requested_extrude_distance

puts "extruder rotation_distance: #{rotation_distance.to_f}"
