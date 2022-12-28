require 'bigdecimal/util'

probe_x_position = 150
probe_y_position = 125

nozzle_x_position = BigDecimal("115.9")
nozzle_y_position = BigDecimal("122")

x_offset = nozzle_x_position - probe_x_position
y_offset = nozzle_y_position - probe_y_position

puts "x_offset: #{x_offset.to_f}\ny_offset: #{y_offset.to_f}"
