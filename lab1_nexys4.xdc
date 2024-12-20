# Nexys4 Pin Assignments
############################
# On-board Slide Switches  #
############################
set_property PACKAGE_PIN J15 [get_ports D[0]]
set_property IOSTANDARD LVCMOS33 [get_ports D[0]]
set_property PACKAGE_PIN L16 [get_ports D[1]]
set_property IOSTANDARD LVCMOS33 [get_ports D[1]]
set_property PACKAGE_PIN M13 [get_ports D[2]]
set_property IOSTANDARD LVCMOS33 [get_ports D[2]]
set_property PACKAGE_PIN R15 [get_ports D[3]]
set_property IOSTANDARD LVCMOS33 [get_ports D[3]]
set_property PACKAGE_PIN R17 [get_ports swt[4]] 
set_property IOSTANDARD LVCMOS33 [get_ports swt[4]]
set_property PACKAGE_PIN T18 [get_ports swt[5]] 
set_property IOSTANDARD LVCMOS33 [get_ports swt[5]]
set_property PACKAGE_PIN U18 [get_ports swt[6]] 
set_property IOSTANDARD LVCMOS33 [get_ports swt[6]]
set_property PACKAGE_PIN R13 [get_ports swt[7]] 
set_property IOSTANDARD LVCMOS33 [get_ports swt[7]]

############################
# On-board led             #
############################
set_property PACKAGE_PIN H17 [get_ports x]
set_property IOSTANDARD LVCMOS33 [get_ports x]
set_property PACKAGE_PIN K15 [get_ports y] 
set_property IOSTANDARD LVCMOS33 [get_ports y]
set_property PACKAGE_PIN J13 [get_ports valid] 
set_property IOSTANDARD LVCMOS33 [get_ports valid]
set_property PACKAGE_PIN N14 [get_ports led[3]] 
set_property IOSTANDARD LVCMOS33 [get_ports led[3]]
set_property PACKAGE_PIN R18 [get_ports led[4]] 
set_property IOSTANDARD LVCMOS33 [get_ports led[4]]
set_property PACKAGE_PIN V17 [get_ports led[5]] 
set_property IOSTANDARD LVCMOS33 [get_ports led[5]]
set_property PACKAGE_PIN U17 [get_ports led[6]] 
set_property IOSTANDARD LVCMOS33 [get_ports led[6]]
set_property PACKAGE_PIN U16 [get_ports led[7]] 
set_property IOSTANDARD LVCMOS33 [get_ports led[7]]


#clock signal
set_property PACKAGE_PIN E3 [get_ports CLK100MHZ] 
set_property IOSTANDARD LVCMOS33 [get_ports CLK100MHZ]

#create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {CLK100MHZ}];



