v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -510 -240 -510 -180 {lab=GND}
N -510 -370 -510 -300 {lab=vdd}
N -250 -180 -250 -150 {lab=GND}
N -510 -410 -510 -370 {lab=vdd}
N -510 -410 -250 -410 {lab=vdd}
N -250 -410 -250 -380 {lab=vdd}
N -150 -260 -90 -260 {lab=out_1v}
N 190 -260 190 -230 {lab=out_0v3}
N 190 -170 190 -150 {lab=GND}
N 190 -300 190 -260 {lab=out_0v3}
N 50 -300 190 -300 {lab=out_0v3}
N -150 -300 50 -300 {lab=out_0v3}
N -150 -280 70 -280 {lab=out_0v8}
N -150 -240 -130 -240 {lab=out_10u}
N -130 -120 -130 -80 {lab=nmos_in}
N -130 -80 -110 -80 {lab=nmos_in}
N -140 -40 -110 -40 {lab=out_0v8}
N 90 -80 150 -80 {lab=nmos_out}
N 520 90 520 130 {lab=pmos_out}
N 520 190 520 250 {lab=GND}
N -10 20 -10 80 {lab=GND}
N 520 70 520 90 {lab=pmos_out}
N 460 70 520 70 {lab=pmos_out}
N 360 -70 360 -30 {lab=vdd}
N 210 110 260 110 {lab=out_1v}
N 150 -80 150 -40 {lab=nmos_out}
N 150 20 150 70 {lab=pmos_in}
N 150 70 260 70 {lab=pmos_in}
N -130 -240 -130 -180 {lab=out_10u}
C {vsource.sym} -510 -270 0 0 {name=V1 value=1.8 savecurrent=true}
C {lab_pin.sym} -510 -410 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {gnd.sym} -510 -180 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/corner.sym} -400 150 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} -530 -30 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} -490 -90 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {code_shown.sym} 300 -490 0 0 {name=spice only_toplevel=false value="
.temp 25
.control
option savecurrents
option klu
option method=gear
option noacct
option noinit
save all

op
write overall_dc_temp_sweep_tb.raw

dc temp -40 120 1
plot abs(i(v2)) abs(i(v3)) abs(i(v4))

wrdata overall_tb_nmos.txt abs(i(v2))
wrdata overall_tb_pmos.txt abs(i(v3))
wrdata overall_tb_bandgap.txt abs(i(v4))

wrdata overall_tb.txt abs(i(v2)) abs(i(v3)) abs(i(v4))

.endc"}
C {bandgapref.sym} -250 -280 0 0 {name=x1}
C {gnd.sym} -250 -150 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -90 -260 2 0 {name=p1 sig_type=std_logic lab=out_1v}
C {capa.sym} 190 -200 0 0 {name=C2
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 190 -150 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 190 -260 2 0 {name=p2 sig_type=std_logic lab=out_0v3}
C {lab_pin.sym} 70 -280 2 0 {name=p3 sig_type=std_logic lab=out_0v8}
C {wideswing_cur_mir_nmos.sym} -10 -80 0 0 {name=x2}
C {lab_pin.sym} -140 -40 2 1 {name=p5 sig_type=std_logic lab=out_0v8}
C {vsource.sym} 150 -10 0 0 {name=V2 value=0 savecurrent=true}
C {gnd.sym} 520 250 0 0 {name=l3 lab=GND}
C {gnd.sym} -10 80 0 0 {name=l5 lab=GND}
C {wideswing_cur_mir_pmos.sym} 360 70 0 0 {name=x3}
C {lab_pin.sym} 360 -70 0 0 {name=p6 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 210 110 2 1 {name=p7 sig_type=std_logic lab=out_1v}
C {vsource.sym} 520 160 0 0 {name=V3 value=0 savecurrent=true}
C {lab_pin.sym} 150 -80 0 1 {name=p8 sig_type=std_logic lab=nmos_out}
C {lab_pin.sym} 150 70 0 0 {name=p9 sig_type=std_logic lab=pmos_in}
C {lab_pin.sym} -130 -80 0 0 {name=p4 sig_type=std_logic lab=nmos_in}
C {lab_pin.sym} 520 70 0 1 {name=p10 sig_type=std_logic lab=pmos_out}
C {vsource.sym} -130 -150 0 0 {name=V4 value=0 savecurrent=true}
C {lab_pin.sym} -130 -240 2 0 {name=p12 sig_type=std_logic lab=out_10u}
