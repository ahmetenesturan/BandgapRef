v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -100 -110 -50 -110 {lab=vp}
N -100 -30 -50 -30 {lab=vn}
N -100 -70 -50 -70 {lab=ib}
N 10 -180 10 -130 {lab=vdd}
N 10 -10 10 40 {lab=GND}
N -480 -20 -480 20 {lab=GND}
N -480 -120 -480 -80 {lab=vdd}
N -410 -20 -410 20 {lab=GND}
N -410 -120 -410 -80 {lab=vp}
N -320 -20 -320 20 {lab=GND}
N -320 -120 -320 -80 {lab=vn}
N -220 -120 -220 -80 {lab=vdd}
N -220 -20 -220 20 {lab=ib}
N 100 -70 150 -70 {lab=out}
N 150 -70 150 -40 {lab=out}
N 150 20 150 40 {lab=GND}
C {ota-5t.sym} 20 -70 0 0 {name=x1}
C {code_shown.sym} 270 -530 0 0 {name=spice only_toplevel=false value="
.temp 25
.control
option savecurrents
option klu
option method=gear
option noacct
option noinit
save all



op
write ota-5t_tb.raw

ac dec 10 1k 1G

plot db(out)
plot phase(out)

wrdata ota-5t_tb.txt db(out)

show all

.endc"}
C {lab_pin.sym} -100 -110 0 0 {name=p1 sig_type=std_logic lab=vp}
C {lab_pin.sym} -100 -70 0 0 {name=p2 sig_type=std_logic lab=ib}
C {lab_pin.sym} -100 -30 0 0 {name=p3 sig_type=std_logic lab=vn}
C {lab_pin.sym} 10 -180 0 0 {name=p4 sig_type=std_logic lab=vdd}
C {gnd.sym} 10 40 0 0 {name=l1 lab=GND}
C {vsource.sym} -480 -50 0 0 {name=V1 value=1.8 savecurrent=true}
C {gnd.sym} -480 20 0 0 {name=l2 lab=GND}
C {lab_pin.sym} -480 -120 0 0 {name=p5 sig_type=std_logic lab=vdd}
C {vsource.sym} -410 -50 0 0 {name=V2 value="dc 0.9 ac 0.5" savecurrent=true}
C {gnd.sym} -410 20 0 0 {name=l3 lab=GND
value="dc 0.9 ac 1"}
C {lab_pin.sym} -410 -120 0 0 {name=p6 sig_type=std_logic lab=vp}
C {vsource.sym} -320 -50 0 0 {name=V3 value="dc 0.9 ac -0.5" savecurrent=true}
C {gnd.sym} -320 20 0 0 {name=l4 lab=GND
value="dc 0.9 ac 1"}
C {lab_pin.sym} -320 -120 0 0 {name=p7 sig_type=std_logic lab=vn}
C {isource.sym} -220 -50 0 0 {name=I0 value=10u}
C {lab_pin.sym} -220 -120 0 0 {name=p8 sig_type=std_logic lab=vdd}
C {lab_pin.sym} -220 20 0 0 {name=p9 sig_type=std_logic lab=ib}
C {capa.sym} 150 -10 0 0 {name=C1
m=1
value=1p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 150 40 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 150 -70 0 1 {name=p10 sig_type=std_logic lab=out}
C {sky130_fd_pr/corner.sym} -30 120 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} -230 140 0 0 {name=h1
descr="Annotate OP" 
tclcommand="set show_hidden_texts 1; xschem annotate_op"
}
C {devices/launcher.sym} -190 80 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
