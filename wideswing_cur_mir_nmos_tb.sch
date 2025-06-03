v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -470 -50 -470 -20 {lab=GND}
N -470 -140 -470 -110 {lab=Iin}
N -390 -50 -390 -20 {lab=GND}
N -390 -140 -390 -110 {lab=Iout}
N -300 -50 -300 -20 {lab=GND}
N -300 -140 -300 -110 {lab=Vb}
N -90 -150 -40 -150 {lab=Iin}
N -90 -110 -40 -110 {lab=Vb}
N 160 -150 210 -150 {lab=Iout}
N 60 -50 60 -20 {lab=GND}
C {isource.sym} -470 -80 2 0 {name=I0 value=10u}
C {gnd.sym} -470 -20 0 0 {name=l3 lab=GND}
C {lab_pin.sym} -470 -140 0 0 {name=p8 sig_type=std_logic lab=Iin}
C {vsource.sym} -390 -80 0 0 {name=V2 value=1 savecurrent=true}
C {gnd.sym} -390 -20 0 0 {name=l4 lab=GND}
C {lab_pin.sym} -390 -140 0 0 {name=p9 sig_type=std_logic lab=Iout}
C {vsource.sym} -300 -80 0 0 {name=V3 value=0.6 savecurrent=true}
C {gnd.sym} -300 -20 0 0 {name=l5 lab=GND}
C {lab_pin.sym} -300 -140 0 0 {name=p10 sig_type=std_logic lab=Vb}
C {code_shown.sym} 300 -540 0 0 {name=spice only_toplevel=false value="
.temp 25
.control
option savecurrents
option klu
option method=gear
option noacct
option noinit
save all


save @m.x1.xm1.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xm1.msky130_fd_pr__nfet_01v8_lvt[id]

save @m.x1.xm2.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xm2.msky130_fd_pr__nfet_01v8_lvt[id]

save @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xm3.msky130_fd_pr__nfet_01v8_lvt[id]

save @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[gm]
save @m.x1.xm4.msky130_fd_pr__nfet_01v8_lvt[id]

op
write wideswing_cur_mir_nmos_tb.raw

dc v2 0.3 1.8 0.01
plot i(v2)

*show all

.endc"}
C {sky130_fd_pr/corner.sym} 340 130 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} -10 240 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} 10 170 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {wideswing_cur_mir_nmos.sym} 60 -150 0 0 {name=x1}
C {lab_pin.sym} -90 -150 0 0 {name=p1 sig_type=std_logic lab=Iin}
C {lab_pin.sym} -90 -110 0 0 {name=p2 sig_type=std_logic lab=Vb}
C {lab_pin.sym} 210 -150 0 1 {name=p3 sig_type=std_logic lab=Iout}
C {gnd.sym} 60 -20 0 0 {name=l1 lab=GND}
