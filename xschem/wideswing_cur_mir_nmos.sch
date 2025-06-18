v {xschem version=3.4.6 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N -10 -100 -10 -50 {lab=#net1}
N 170 -100 170 -50 {lab=#net2}
N -10 10 -10 40 {lab=VSS}
N 170 10 170 40 {lab=VSS}
N -10 -200 -10 -160 {lab=Iin}
N 170 -200 170 -160 {lab=Iout}
N -10 40 170 40 {lab=VSS}
N -40 -130 -10 -130 {lab=VSS}
N -40 -20 -10 -20 {lab=VSS}
N 30 -20 130 -20 {lab=Iin}
N 30 -130 130 -130 {lab=Vb_0v6}
N 80 -100 100 -100 {lab=Vb_0v6}
N 100 -130 100 -100 {lab=Vb_0v6}
N 170 -20 200 -20 {lab=VSS}
N 170 -130 200 -130 {lab=VSS}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 10 -20 0 1 {name=M1
L=8
W=100
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 150 -20 0 0 {name=M2
L=8
W=100
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 10 -130 0 1 {name=M3
L=8
W=100
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {sky130_fd_pr/nfet_01v8_lvt.sym} 150 -130 0 0 {name=M4
L=8
W=100
nf=1 mult=1
model=nfet_01v8_lvt
spiceprefix=X
}
C {ngspice_probe.sym} -10 -70 0 0 {name=r1}
C {ngspice_probe.sym} 170 -70 0 0 {name=r2}
C {ipin.sym} -10 -200 0 0 {name=p1 lab=Iin}
C {opin.sym} 170 -200 0 0 {name=p12 lab=Iout}
C {lab_pin.sym} 80 -20 1 0 {name=p11 sig_type=std_logic lab=Iin}
C {ipin.sym} 80 -100 0 0 {name=p5 lab=Vb_0v8}
C {iopin.sym} 170 40 0 0 {name=p2 lab=VSS}
C {lab_pin.sym} -40 -20 0 0 {name=p3 sig_type=std_logic lab=VSS}
C {lab_pin.sym} -40 -130 0 0 {name=p4 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 200 -20 0 1 {name=p6 sig_type=std_logic lab=VSS}
C {lab_pin.sym} 200 -130 0 1 {name=p7 sig_type=std_logic lab=VSS}
