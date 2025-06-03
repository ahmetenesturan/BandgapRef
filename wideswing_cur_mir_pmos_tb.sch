v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -450 -140 -450 -110 {lab=GND}
N -450 -230 -450 -200 {lab=VDD}
N -350 -140 -350 -110 {lab=GND}
N -350 -230 -350 -200 {lab=Iin}
N -270 -140 -270 -110 {lab=GND}
N -270 -230 -270 -200 {lab=Iout}
N -180 -140 -180 -110 {lab=GND}
N -180 -230 -180 -200 {lab=Vb}
N 120 -260 120 -230 {lab=VDD}
N -10 -130 20 -130 {lab=Iin}
N -10 -90 20 -90 {lab=Vb}
N 220 -130 250 -130 {lab=Iout}
C {vsource.sym} -450 -170 0 0 {name=V1 value=1.8 savecurrent=true}
C {gnd.sym} -450 -110 0 0 {name=l1 lab=GND}
C {lab_pin.sym} -450 -230 0 0 {name=p7 sig_type=std_logic lab=VDD}
C {isource.sym} -350 -170 0 0 {name=I0 value=10u}
C {gnd.sym} -350 -110 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -350 -230 0 0 {name=p8 sig_type=std_logic lab=Iin}
C {vsource.sym} -270 -170 0 0 {name=V2 value=1.5 savecurrent=true}
C {gnd.sym} -270 -110 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -270 -230 0 0 {name=p9 sig_type=std_logic lab=Iout}
C {code_shown.sym} 340 -470 0 0 {name=spice only_toplevel=false value="
.temp 25
.control
option savecurrents
option klu
option method=gear
option noacct
option noinit
save all


save @m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm1.msky130_fd_pr__pfet_01v8_lvt[id]

save @m.x1.xm2.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm2.msky130_fd_pr__pfet_01v8_lvt[id]

save @m.x1.xm3.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm3.msky130_fd_pr__pfet_01v8_lvt[id]

save @m.x1.xm4.msky130_fd_pr__pfet_01v8_lvt[gm]
save @m.x1.xm4.msky130_fd_pr__pfet_01v8_lvt[id]

op
write wideswing_cur_mir_pmos_tb.raw

dc v2 0 1.5 0.01
plot i(v2)

*show all

.endc"}
C {sky130_fd_pr/corner.sym} 400 140 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} 80 180 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 100 110 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {vsource.sym} -180 -170 0 0 {name=V3 value=1 savecurrent=true}
C {gnd.sym} -180 -110 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -180 -230 0 0 {name=p10 sig_type=std_logic lab=Vb}
C {wideswing_cur_mir_pmos.sym} 120 -130 0 0 {name=x1}
C {lab_pin.sym} 120 -260 0 0 {name=p1 sig_type=std_logic lab=VDD}
C {lab_pin.sym} -10 -130 0 0 {name=p2 sig_type=std_logic lab=Iin}
C {lab_pin.sym} 250 -130 0 1 {name=p3 sig_type=std_logic lab=Iout}
C {lab_pin.sym} -10 -90 0 0 {name=p4 sig_type=std_logic lab=Vb}
