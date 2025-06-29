v {xschem version=3.4.7 file_version=1.2}
G {}
K {}
V {}
S {}
E {}
N 220 200 220 280 {
lab=#net1}
N 260 170 340 170 {
lab=#net1}
N 280 170 280 220 {
lab=#net1}
N 220 220 280 220 {
lab=#net1}
N 380 200 380 280 {
lab=Vout}
N 220 340 220 370 {
lab=#net2}
N 220 370 300 370 {
lab=#net2}
N 300 370 300 400 {
lab=#net2}
N 300 370 380 370 {
lab=#net2}
N 380 340 380 370 {
lab=#net2}
N 160 430 260 430 {
lab=Ib}
N 120 380 180 380 {
lab=Ib}
N 180 380 180 430 {
lab=Ib}
N 120 460 120 480 {
lab=VSS}
N 300 460 300 480 {
lab=VSS}
N 220 120 220 140 {
lab=VDD}
N 380 120 380 140 {
lab=VDD}
N 120 480 120 500 {
lab=VSS}
N 300 480 300 500 {
lab=VSS}
N 100 100 380 100 {
lab=VDD}
N 380 100 380 120 {
lab=VDD}
N 220 100 220 120 {
lab=VDD}
N 120 360 120 400 {
lab=Ib}
N 220 310 230 310 {
lab=VSS}
N 380 170 390 170 {
lab=VDD}
N 210 170 220 170 {
lab=VDD}
N 370 310 380 310 {
lab=VSS}
N 300 430 310 430 {
lab=VSS}
N 110 430 120 430 {
lab=VSS}
N 380 240 410 240 {
lab=Vout}
N 110 500 300 500 {lab=VSS}
C {devices/ipin.sym} 180 310 0 0 {name=p1 lab=Vp}
C {devices/ipin.sym} 420 310 0 1 {name=p2 lab=Vn}
C {devices/opin.sym} 410 240 0 0 {name=p3 lab=Vout
}
C {devices/iopin.sym} 100 100 0 1 {name=p4 lab=VDD}
C {devices/iopin.sym} 110 500 2 0 {name=p5 lab=VSS}
C {devices/ipin.sym} 120 360 1 0 {name=p6 lab=Ib}
C {sky130_fd_pr/nfet_01v8.sym} 200 310 0 0 {name=M4
L=1
W=20
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 230 310 0 1 {name=p7 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/pfet_01v8.sym} 360 170 0 0 {name=M1
L=1
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 390 170 0 1 {name=p9 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/pfet_01v8.sym} 240 170 0 1 {name=M2
L=1
W=2
nf=1 mult=1
model=pfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 210 170 0 0 {name=p10 sig_type=std_logic lab=VDD}
C {sky130_fd_pr/nfet_01v8.sym} 400 310 0 1 {name=M3
L=1
W=20
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 370 310 0 0 {name=p11 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 280 430 0 0 {name=M5
L=1
W=2
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 310 430 0 1 {name=p12 sig_type=std_logic lab=VSS}
C {sky130_fd_pr/nfet_01v8.sym} 140 430 0 1 {name=M6
L=1
W=2
nf=1 mult=1
model=nfet_01v8
spiceprefix=X
}
C {devices/lab_wire.sym} 110 430 0 0 {name=p13 sig_type=std_logic lab=VSS}
C {ngspice_probe.sym} 280 170 0 0 {name=r1}
C {ngspice_probe.sym} 300 370 0 0 {name=r2}
