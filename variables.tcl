#Two optioins are available; activate only one
#To use Synopsys 28nm, you need to have access to it.
# To get the access, please refer to https://eulas.ece.gatech.edu
# or contact ECE help (help@ece.gatech.edu)

# 1. Specify the target library

#set current_library "NanGate" 
set current_library "FreePDK45" 
#set current_library "Synopsys_28nm" 

# 2. Set the target clock period

#For NanGate library, the unit of clock period is ps.
# Therefore, 1000 ps = 1ns => 1GHz clock

set Clock_Period 1000
set_units -capacitance ff
set_units -time ps

#For Synopsys library, the unit of clock period is ns.
# Therefore  1 ns => 1GHz
#set Clock_Period 1
#set_units -time ns

#Setup IO Delay
set IO_Delay 0.025

# 3. Specify the clock signal name

# If you are using a different clock name, change the following variable
set Clock_Name "clock"


