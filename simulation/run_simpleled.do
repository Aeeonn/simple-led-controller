add wave *
view signals

# Create VCD for GTKWave
# Create directory for VCD if not exists
if {![file isdirectory "./vcd"]} {
    file mkdir "./vcd"
}


vcd file ./vcd/tb_simpleledcontrol.vcd;
vcd add -r /tb_simpleledcontrol/*;
vcd add -r /tb_simpleledcontrol/dut/*;
onfinish stop;
run -all;

