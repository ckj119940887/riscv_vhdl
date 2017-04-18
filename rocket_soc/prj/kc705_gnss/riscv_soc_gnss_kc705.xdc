
create_clock -name i_sclk_p -period 5.000 [get_ports i_sclk_p]
# The conversion of 'IOSTANDARD' constraint on 'net' object 'i_sclk_p' has been applied to the port object 'i_sclk_p'.
set_property IOSTANDARD LVDS [get_ports i_sclk_p]
# The conversion of 'IOSTANDARD' constraint on 'net' object 'i_sclk_n' has been applied to the port object 'i_sclk_n'.
set_property IOSTANDARD LVDS [get_ports i_sclk_n]
set_property PACKAGE_PIN AD12 [get_ports i_sclk_p]
set_property PACKAGE_PIN AD11 [get_ports i_sclk_n]

# button "Center"
set_property PACKAGE_PIN G12 [get_ports i_rst]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets i_rst]

set_property PACKAGE_PIN AF22 [get_ports i_clk_adc]
# DIP switch: SW1.1
set_property PACKAGE_PIN Y29 [get_ports {i_int_clkrf}]
set_property PACKAGE_PIN W29 [get_ports {i_dip[1]}]
set_property PACKAGE_PIN AA28 [get_ports {i_dip[2]}]
set_property PACKAGE_PIN Y28 [get_ports {i_dip[3]}]



#UART interface
set_property PACKAGE_PIN K23 [get_ports i_uart1_ctsn]
set_property PACKAGE_PIN M19 [get_ports i_uart1_rd]
set_property PACKAGE_PIN L27 [get_ports o_uart1_rtsn]
set_property PACKAGE_PIN K24 [get_ports o_uart1_td]


#/ User's LEDs:
set_property PACKAGE_PIN AB8 [get_ports {o_led[0]}]
set_property PACKAGE_PIN AA8 [get_ports {o_led[1]}]
set_property PACKAGE_PIN AC9 [get_ports {o_led[2]}]
set_property PACKAGE_PIN AB9 [get_ports {o_led[3]}]
set_property PACKAGE_PIN AE26 [get_ports {o_led[4]}]
set_property PACKAGE_PIN G19 [get_ports {o_led[5]}]
set_property PACKAGE_PIN E18 [get_ports {o_led[6]}]
set_property PACKAGE_PIN F16 [get_ports {o_led[7]}]

# The conversion of 'IOSTANDARD' constraint on 'net' object 'i_clk_adc' has been applied to the port object 'i_clk_adc'.
set_property IOSTANDARD LVCMOS25 [get_ports i_clk_adc]
# The conversion of 'IOSTANDARD' constraint on 'net' object 'i_uart1_ctsn' has been applied to the port object 'i_uart1_ctsn'.
set_property IOSTANDARD LVCMOS25 [get_ports i_uart1_ctsn]
# The conversion of 'IOSTANDARD' constraint on 'net' object 'i_int_clkrf' has been applied to the port object 'i_int_clkrf'.
set_property IOSTANDARD LVCMOS25 [get_ports {i_int_clkrf}]
# The conversion of 'IOSTANDARD' constraint on 'net' object 'i_dip[1]' has been applied to the port object 'i_dip[1]'.
set_property IOSTANDARD LVCMOS25 [get_ports {i_dip[1]}]
# The conversion of 'IOSTANDARD' constraint on 'net' object 'i_dip[2]' has been applied to the port object 'i_dip[2]'.
set_property IOSTANDARD LVCMOS25 [get_ports {i_dip[2]}]
# The conversion of 'IOSTANDARD' constraint on 'net' object 'i_dip[3]' has been applied to the port object 'i_dip[3]'.
set_property IOSTANDARD LVCMOS25 [get_ports {i_dip[3]}]

# The conversion of 'IOSTANDARD' constraint on 'net' object 'i_uart1_rd' has been applied to the port object 'i_uart1_rd'.
set_property IOSTANDARD LVCMOS25 [get_ports i_uart1_rd]
# The conversion of 'IOSTANDARD' constraint on 'net' object 'i_rst' has been applied to the port object 'i_rst'.
set_property IOSTANDARD LVCMOS25 [get_ports i_rst]
# The conversion of 'IOSTANDARD' constraint on 'net' object 'o_led[0]' has been applied to the port object 'o_led[0]'.
set_property IOSTANDARD LVCMOS15 [get_ports {o_led[0]}]
# The conversion of 'IOSTANDARD' constraint on 'net' object 'o_led[1]' has been applied to the port object 'o_led[1]'.
set_property IOSTANDARD LVCMOS15 [get_ports {o_led[1]}]
# The conversion of 'IOSTANDARD' constraint on 'net' object 'o_led[2]' has been applied to the port object 'o_led[2]'.
set_property IOSTANDARD LVCMOS15 [get_ports {o_led[2]}]
# The conversion of 'IOSTANDARD' constraint on 'net' object 'o_led[3]' has been applied to the port object 'o_led[3]'.
set_property IOSTANDARD LVCMOS15 [get_ports {o_led[3]}]
# The conversion of 'IOSTANDARD' constraint on 'net' object 'o_led[4]' has been applied to the port object 'o_led[4]'.
set_property IOSTANDARD LVCMOS25 [get_ports {o_led[4]}]
# The conversion of 'IOSTANDARD' constraint on 'net' object 'o_led[5]' has been applied to the port object 'o_led[5]'.
set_property IOSTANDARD LVCMOS25 [get_ports {o_led[5]}]
# The conversion of 'IOSTANDARD' constraint on 'net' object 'o_led[6]' has been applied to the port object 'o_led[6]'.
set_property IOSTANDARD LVCMOS25 [get_ports {o_led[6]}]
# The conversion of 'IOSTANDARD' constraint on 'net' object 'o_led[7]' has been applied to the port object 'o_led[7]'.
set_property IOSTANDARD LVCMOS25 [get_ports {o_led[7]}]
# The conversion of 'IOSTANDARD' constraint on 'net' object 'o_uart1_rtsn' has been applied to the port object 'o_uart1_rtsn'.
set_property IOSTANDARD LVCMOS25 [get_ports o_uart1_rtsn]
# The conversion of 'IOSTANDARD' constraint on 'net' object 'o_uart1_td' has been applied to the port object 'o_uart1_td'.
set_property IOSTANDARD LVCMOS25 [get_ports o_uart1_td]

# Ethernet signals
set_property PACKAGE_PIN G8 [get_ports i_gmiiclk_p]
set_property PACKAGE_PIN G7 [get_ports i_gmiiclk_n]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets -of [get_pins igbebuf0/xk7.x1/x1/O]]

set_property PACKAGE_PIN J21 [get_ports io_emdio]
set_property IOSTANDARD LVCMOS25 [get_ports io_emdio]
set_property PACKAGE_PIN R23 [get_ports o_emdc]
set_property IOSTANDARD LVCMOS25 [get_ports o_emdc]
set_property PACKAGE_PIN N30 [get_ports i_emdint]
set_property IOSTANDARD LVCMOS25 [get_ports i_emdint]
set_property PACKAGE_PIN L20 [get_ports o_erstn]
set_property IOSTANDARD LVCMOS25 [get_ports o_erstn]
set_property PACKAGE_PIN R30 [get_ports i_erx_crs]
set_property IOSTANDARD LVCMOS25 [get_ports i_erx_crs]
set_property PACKAGE_PIN W19 [get_ports i_erx_col]
set_property IOSTANDARD LVCMOS25 [get_ports i_erx_col]
set_property PACKAGE_PIN U27 [get_ports i_erx_clk]
set_property IOSTANDARD LVCMOS25 [get_ports i_erx_clk]
set_property PACKAGE_PIN V26 [get_ports i_erx_er]
set_property IOSTANDARD LVCMOS25 [get_ports i_erx_er]
set_property PACKAGE_PIN R28 [get_ports i_erx_dv]
set_property IOSTANDARD LVCMOS25 [get_ports i_erx_dv]
set_property PACKAGE_PIN U30 [get_ports {i_erxd[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {i_erxd[0]}]
set_property PACKAGE_PIN U25 [get_ports {i_erxd[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {i_erxd[1]}]
set_property PACKAGE_PIN T25 [get_ports {i_erxd[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {i_erxd[2]}]
set_property PACKAGE_PIN U28 [get_ports {i_erxd[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {i_erxd[3]}]
set_property PACKAGE_PIN K30 [get_ports o_egtx_clk]
set_property IOSTANDARD LVCMOS25 [get_ports o_egtx_clk]
set_property PACKAGE_PIN M28 [get_ports i_etx_clk]
set_property IOSTANDARD LVCMOS25 [get_ports i_etx_clk]
set_property PACKAGE_PIN N29 [get_ports o_etx_er]
set_property IOSTANDARD LVCMOS25 [get_ports o_etx_er]
set_property PACKAGE_PIN M27 [get_ports o_etx_en]
set_property IOSTANDARD LVCMOS25 [get_ports o_etx_en]
set_property PACKAGE_PIN N27 [get_ports {o_etxd[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {o_etxd[0]}]
set_property PACKAGE_PIN N25 [get_ports {o_etxd[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {o_etxd[1]}]
set_property PACKAGE_PIN M29 [get_ports {o_etxd[2]}]
set_property IOSTANDARD LVCMOS25 [get_ports {o_etxd[2]}]
set_property PACKAGE_PIN L28 [get_ports {o_etxd[3]}]
set_property IOSTANDARD LVCMOS25 [get_ports {o_etxd[3]}]


# ADC samples:
set_property PACKAGE_PIN AH30 [get_ports {i_gps_I[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {i_gps_I[1]}]
set_property PACKAGE_PIN AE28 [get_ports {i_gps_I[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {i_gps_I[0]}]
set_property PACKAGE_PIN AD26 [get_ports {i_gps_Q[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {i_gps_Q[1]}]
set_property PACKAGE_PIN AG28 [get_ports {i_gps_Q[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {i_gps_Q[0]}]

set_property PACKAGE_PIN AA30 [get_ports {i_glo_I[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {i_glo_I[1]}]
set_property PACKAGE_PIN Y30 [get_ports {i_glo_I[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {i_glo_I[0]}]
set_property PACKAGE_PIN AC29 [get_ports {i_glo_Q[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {i_glo_Q[1]}]
set_property PACKAGE_PIN AC30 [get_ports {i_glo_Q[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {i_glo_Q[0]}]

set_property PACKAGE_PIN AE30 [get_ports i_gps_ld]
set_property IOSTANDARD LVCMOS25 [get_ports i_gps_ld]
set_property PACKAGE_PIN AF30 [get_ports i_glo_ld]
set_property IOSTANDARD LVCMOS25 [get_ports i_glo_ld]

# RF control:
set_property PACKAGE_PIN AE29 [get_ports o_max_sclk]
set_property IOSTANDARD LVCMOS25 [get_ports o_max_sclk]
set_property PACKAGE_PIN AD29 [get_ports o_max_sdata]
set_property IOSTANDARD LVCMOS25 [get_ports o_max_sdata]
set_property PACKAGE_PIN AB29 [get_ports {o_max_ncs[1]}]
set_property IOSTANDARD LVCMOS25 [get_ports {o_max_ncs[1]}]
set_property PACKAGE_PIN AF28 [get_ports {o_max_ncs[0]}]
set_property IOSTANDARD LVCMOS25 [get_ports {o_max_ncs[0]}]
set_property PACKAGE_PIN AH25 [get_ports i_antext_stat]
set_property IOSTANDARD LVCMOS25 [get_ports i_antext_stat]
set_property PACKAGE_PIN AJ23 [get_ports i_antext_detect]
set_property IOSTANDARD LVCMOS25 [get_ports i_antext_detect]
set_property PACKAGE_PIN AG25 [get_ports o_antext_ena]
set_property IOSTANDARD LVCMOS25 [get_ports o_antext_ena]
set_property PACKAGE_PIN AC26 [get_ports o_antint_contr]
set_property IOSTANDARD LVCMOS25 [get_ports o_antint_contr]


# new tap controller
# comment this if using xilinx tap
# ahbjtag.vhd line 107:
# tech => tech (xilinx tap)
# tech => 0 (asic tap)
#NET "TMS" LOC = AE21;
#NET "TMS" IOSTANDARD = LVCMOS25;
#NET "TCK" LOC = AD21;
#NET "TCK" IOSTANDARD = LVCMOS25;
#NET "TDO" LOC = AK25;
#NET "TDO" IOSTANDARD = LVCMOS25;
#NET "TDI" LOC = AJ24;
#NET "TDI" IOSTANDARD = LVCMOS25;
#NET "TCK" CLOCK_DEDICATED_ROUTE = FALSE;
