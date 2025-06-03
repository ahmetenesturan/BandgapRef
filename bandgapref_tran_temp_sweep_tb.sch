v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -260 -150 -260 -90 {lab=GND}
N -260 -280 -260 -210 {lab=vdd}
N 0 -90 0 -60 {lab=GND}
N -260 -320 -260 -280 {lab=vdd}
N -260 -320 -0 -320 {lab=vdd}
N 0 -320 -0 -290 {lab=vdd}
N 100 -170 160 -170 {lab=out_1v}
N 160 -170 160 -140 {lab=out_1v}
N 160 -80 160 -60 {lab=GND}
N 440 -170 440 -140 {lab=out_0v3}
N 440 -80 440 -60 {lab=GND}
N 440 -210 440 -170 {lab=out_0v3}
N 300 -210 440 -210 {lab=out_0v3}
N 100 -210 300 -210 {lab=out_0v3}
N 100 -190 320 -190 {lab=out_0v6}
N 320 -150 320 -120 {lab=out_0v6}
N 320 -60 320 -40 {lab=GND}
N 320 -190 320 -150 {lab=out_0v6}
N 100 -150 120 -150 {lab=Iout_10u}
N 120 -150 120 -30 {lab=Iout_10u}
N 120 30 120 60 {lab=GND}
C {vsource.sym} -260 -180 0 0 {name=V1 value=1.8 savecurrent=true}
C {lab_pin.sym} -260 -320 0 0 {name=p11 sig_type=std_logic lab=vdd}
C {gnd.sym} -260 -90 0 0 {name=l2 lab=GND}
C {sky130_fd_pr/corner.sym} -90 30 0 0 {name=CORNER only_toplevel=true corner=tt}
C {devices/launcher.sym} -230 10 0 0 {name=h2
descr="simulate" 
tclcommand="xschem save; xschem netlist; xschem simulate"
}
C {code_shown.sym} 530 -430 0 0 {name=spice only_toplevel=false value="
.temp 25
.control
option savecurrents
option klu
option method=gear
option noacct
option noinit
save all

compose temp_vec start=-40 stop=120 step=1
let out_v_vec=vector(length(temp_vec))
let out_i_vec=vector(length(temp_vec))
let idx=0


foreach tmp $&temp_vec
  option temp=$tmp
  tran 0.01u 6u
  meas tran vout FIND v(out_0v3) AT=6u
  let out_v_vec[idx]=vout
  meas tran iout FIND i(v2) AT=6u
  let out_i_vec[idx]=iout
  let idx=idx+1
end

plot out_v_vec vs temp_vec
plot out_i_vec vs temp_vec

wrdata v_out_tran_temp_sweep.txt out_v_vec vs temp_vec
wrdata i_out_tran_temp_sweep.txt out_i_vec vs temp_vec

.endc"}
C {bandgapref.sym} 0 -190 0 0 {name=x1}
C {gnd.sym} 0 -60 0 0 {name=l1 lab=GND}
C {capa.sym} 160 -110 0 0 {name=C1
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 160 -60 0 0 {name=l3 lab=GND}
C {lab_pin.sym} 160 -170 2 0 {name=p1 sig_type=std_logic lab=out_1v}
C {capa.sym} 440 -110 0 0 {name=C2
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 440 -60 0 0 {name=l4 lab=GND}
C {lab_pin.sym} 440 -170 2 0 {name=p2 sig_type=std_logic lab=out_0v3}
C {capa.sym} 320 -90 0 0 {name=C3
m=1
value=20p
footprint=1206
device="ceramic capacitor"}
C {gnd.sym} 320 -40 0 0 {name=l5 lab=GND}
C {lab_pin.sym} 320 -150 2 0 {name=p3 sig_type=std_logic lab=out_0v8}
C {vsource.sym} 120 0 0 0 {name=V2 value=0.9 savecurrent=true}
C {gnd.sym} 120 60 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 120 -60 2 1 {name=p4 sig_type=std_logic lab=Iout_10u}
