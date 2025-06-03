v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -280 -150 -280 -90 {lab=GND}
N -280 -280 -280 -210 {lab=vdd}
N -280 -320 -280 -280 {lab=vdd}
N -30 -130 30 -130 {lab=nmos_in}
N -50 -130 -50 -70 {lab=nmos_in}
N 0 -90 30 -90 {lab=#net1}
N 0 -90 0 -70 {lab=#net1}
N -50 -130 -30 -130 {lab=nmos_in}
N -50 -10 -50 50 {lab=vdd}
N 0 -10 0 50 {lab=GND}
N 130 -30 130 30 {lab=GND}
N 290 -10 290 50 {lab=GND}
N 290 -130 290 -70 {lab=nmos_out}
N 230 -130 290 -130 {lab=nmos_out}
N 500 -130 560 -130 {lab=pmos_in}
N 480 -130 480 -70 {lab=pmos_in}
N 530 -90 560 -90 {lab=#net2}
N 530 -90 530 -70 {lab=#net2}
N 480 -130 500 -130 {lab=pmos_in}
N 480 -10 480 50 {lab=GND}
N 530 -10 530 50 {lab=GND}
N 820 -10 820 50 {lab=GND}
N 820 -130 820 -70 {lab=pmos_out}
N 760 -130 820 -130 {lab=pmos_out}
N 660 -260 660 -230 {lab=vdd}
C {vsource.sym} -280 -180 0 0 {name=V1 value=1.8 savecurrent=true}
C {lab_pin.sym} -280 -320 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {gnd.sym} -280 -90 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/corner.sym} -30 140 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} -270 0 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {code_shown.sym} 950 -540 0 0 {name=spice only_toplevel=false value="
.temp 25
.option savecurrents
.option klu
.option method=gear
.option noacct
.option noinit

.control

save all

save @m.x1.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xm1.msky130_fd_pr__nfet_01v8_lvt[id]

save @m.x1.xm2.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xm2.msky130_fd_pr__nfet_01v8_lvt[id]

save @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[id]

save @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[id]



save @m.x2.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x2.xm1.msky130_fd_pr__pfet_01v8_lvt[id]

save @m.x2.xm2.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x2.xm2.msky130_fd_pr__pfet_01v8_lvt[id]

save @m.x2.xm3.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x2.xm3.msky130_fd_pr__pfet_01v8_lvt[id]

save @m.x2.xm4.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x2.xm4.msky130_fd_pr__pfet_01v8_lvt[id]

op
write wideswing_cur_mir_outres_tb.raw

dc v3 0 1.8 0.01
plot -1 * i(v3)
plot -1 * i(v3) / 10e-6

wrdata nmos_out_cur.txt (-1 * i(v3))

dc v5 0 1.8 0.01
plot i(v5)

wrdata pmos_out_cur.txt i(v5)

ac dec 100 1 100
plot mag(-1/i(v3)) mag(-1/i(v5))

wrdata nmos_out_res.txt mag(-1/i(v3))
wrdata pmos_out_res.txt mag(-1/i(v5))

.endc"}
C {wideswing_cur_mir_nmos.sym} 130 -130 0 0 {name=x1}
C {vsource.sym} 0 -40 0 0 {name=V2 value=0.8 savecurrent=true}
C {isource.sym} -50 -40 2 0 {name=I0 value=10u}
C {gnd.sym} 0 50 0 0 {name=l3 lab=GND}
C {gnd.sym} 130 30 0 0 {name=l4 lab=GND}
C {vsource.sym} 290 -40 0 0 {name=V3 value="dc 0.3 ac 1" savecurrent=true}
C {gnd.sym} 290 50 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 290 -130 0 1 {name=p1 sig_type=std_logic lab=nmos_out}
C {devices/launcher.sym} -290 60 0 0 {name=h15
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
"}
C {lab_pin.sym} -50 -130 0 0 {name=p2 sig_type=std_logic lab=nmos_in}
C {wideswing_cur_mir_pmos.sym} 660 -130 0 0 {name=x2}
C {vsource.sym} 530 -40 0 0 {name=V4 value=1 savecurrent=true}
C {isource.sym} 480 -40 0 0 {name=I1 value=10u}
C {gnd.sym} 480 50 0 0 {name=l6 lab=GND}
C {gnd.sym} 530 50 0 0 {name=l7 lab=GND}
C {vsource.sym} 820 -40 0 0 {name=V5 value="dc 1.5 ac 1" savecurrent=true}
C {gnd.sym} 820 50 0 0 {name=l9 lab=GND}
C {lab_pin.sym} 820 -130 0 1 {name=p3 sig_type=std_logic lab=pmos_out}
C {lab_pin.sym} 480 -130 0 0 {name=p4 sig_type=std_logic lab=pmos_in}
C {lab_pin.sym} -50 50 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {lab_pin.sym} 660 -260 0 0 {name=p6 sig_type=std_logic lab=vdd}
