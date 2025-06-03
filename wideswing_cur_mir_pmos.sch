v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 40 -120 140 -120 {lab=Vb}
N 40 -210 140 -210 {lab=Iin}
N 0 -180 -0 -150 {lab=#net1}
N 180 -180 180 -150 {lab=#net2}
N -0 -90 -0 -30 {lab=Iin}
N -20 -210 0 -210 {lab=VDD}
N -20 -260 -20 -210 {lab=VDD}
N -20 -260 -0 -260 {lab=VDD}
N -0 -260 0 -240 {lab=VDD}
N 0 -260 180 -260 {lab=VDD}
N 180 -260 180 -240 {lab=VDD}
N 180 -210 200 -210 {lab=VDD}
N 200 -260 200 -210 {lab=VDD}
N 180 -260 200 -260 {lab=VDD}
N -30 -120 0 -120 {lab=VDD}
N 180 -120 210 -120 {lab=VDD}
N 180 -90 180 -30 {lab=Iout}
N 100 -120 100 -80 {lab=Vb}
N 80 -80 100 -80 {lab=Vb}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 20 -210 0 1 {name=M1
L=8
W=200
nf=1 mult=2
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 20 -120 0 1 {name=M2
L=8
W=200
nf=1 mult=2
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 160 -210 0 0 {name=M3
L=8
W=200
nf=1 mult=2
model=pfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8_lvt.sym} 160 -120 0 0 {name=M4
L=8
W=200
nf=1 mult=2
model=pfet_01v8_lvt
spiceprefix=X
}
C {lab_pin.sym} -30 -120 0 0 {name=p3 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 210 -120 0 1 {name=p4 sig_type=std_logic lab=VDD}
C {lab_pin.sym} 80 -210 1 0 {name=p11 sig_type=std_logic lab=Iin}
C {ngspice_probe.sym} 0 -160 0 0 {name=r1}
C {ngspice_probe.sym} 180 -160 0 0 {name=r2}
C {opin.sym} 180 -30 0 0 {name=p12 lab=Iout}
C {ipin.sym} 0 -30 0 0 {name=p1 lab=Iin}
C {ipin.sym} 80 -80 0 0 {name=p5 lab=Vb_1v}
C {iopin.sym} 200 -260 0 0 {name=p2 lab=VDD}
