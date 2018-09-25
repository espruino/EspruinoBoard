// Written in 2018 by Alain Sézille
// Any license defined in the librairies used rule their use herein
// Any license about the Pixl.js board (espruino.com/Pixl.js) is applyable
// The following termes apply exclusively to my own work and do not overrule any other 
// licenses and copyrights for the components and informations used below
// To the extent possible under law, the author(s) have dedicated all
// copyright and related and neighboring rights to this software to the
// public domain worldwide. This software is distributed without any
// warranty.
//
// You should have received a copy of the CC0 Public Domain
// Dedication along with this software.
// If not, see <http://creativecommons.org/publicdomain/zero/1.0/>.

// To use this, download eagle-pcb from https://github.com/triffid/eagle-pcb
// into the same directory as this file

include <eagle-pcb/common.scad>
include <eagle-pcb/resistor.scad>
include <eagle-pcb/SparkFun-Connectors.scad>
include <eagle-pcb/diode.scad>
include <eagle-pcb/Eagle-Library.scad>

// Missing colors used below
blue=[0,0,1];
grey=[0.5,0.5,0.5];

// General size of the Pixl.js board
board_thickness = 1.600000;
board_origin = [0.000000,0.000000];

eta = 0.1;
fn = 18;

module downside() {
    rotate([180,0,0])  children();
}

module transrot(tr = [0,0,0], rt = 0) {
    translate(tr) rotate([0,0,rt]) children();
}

module C0603K(tr = [0,0,0], rt = 0) {
   transrot (tr,rt) downside()    resistor_C0603K("C0603K", 10603);
}

module R0603(tr = [0,0,0], rt = 0) {
   transrot (tr,rt) downside()  resistor_R0603("R0603", 10603);
}

module R1210(tr = [0,0,0], rt = 0) {
   transrot (tr,rt) downside()  rcsmd([12 * 0.254, 10 * 0.254], "R0603", 10603);
}

module SOT23_5(tr = [0,0,0], rt = 0) {
    transrot (tr,rt) downside()  Eagle_Library_SOT23_5L("SOT23_5", 23.5);
}
module SOD323_W(tr = [0,0,0], rt = 0) {
   transrot (tr,rt)  downside()  diode_SOD323_R("SOD323_W", 23.5);
}

module USB_MICROB(tr = [0,0,0], rt = 0) {
   transrot (tr,rt) downside() rotate([0,0,-90]) SparkFun_Connectors_USB_AB_MICRO_SMD();
}

module SMT_JUMPER_3_1_NC_TRACE_NO_SILK(tr = [0,0,0], rt = 0) {
    // transrot (tr,rt) 
}

module SMT_JUMPER_3_NO_NO_SILK(tr = [0,0,0], rt = 0) {
    // transrot(tr,rt) 
}

module COINCELL(thickness = 3.5, diameter = 20.0) {
        color(silver) translate([0,0,thickness/2]) cylinder(r=diameter/2, h=thickness, center=true);
}
module CR2032_SMD(tr = [0,0,0], rt = 0) {
  transrot(tr,rt) downside()  COINCELL(3.64,20);
}

module TACT_MEDI_RIGHT_ANGLE(tr = [0,0,0], rt = 0) {
    transrot(tr,rt) 
    downside()
    rotate([0,0,180])
    translate([0,2.45/2,3.4/2]) 
    union() {
        // body
        color(white)
        cube([7.8, 2.45, 3.4], center=true);
        // button
        color(black)
        translate([0, (2.45/2), 0])
        cube([3, 1.05, 1.5], center=true);
    }
}

module MDBT40(tr = [0,0,0], rt = 0) {
    transrot(tr,rt) 
    downside()
    rotate([0,0,90])
    translate([0,0,1.38/2])
    union() {
        // pcb of module Dimensions: 16mm x 10mm x 2.2mm thick
        color(blue)
        cube([16.3, 10, 0.7], center=true);
        // ceramic antenna
        color(white)
        translate([0.8-16.3/2,0,2.15-1.38])
        cube([1,8,1], center=true);
        // main shield of module
        color(silver)
        translate([(16.3-11.65)/2,0,2.15-1.38])
        cube([11.65,8.25,1.38], center=true);
    }
}

module JHD12864_G176BSW(tr = [0,0,0], rt = 0) {
    transrot (tr,rt) 
    translate([0,0,board_thickness])
    union() {
        // pcb of module Dimensions: 16mm x 10mm x 2.2mm thick
        color(silver)
        cube([59.2,41.4,4.7], center=false);
        // main shield of module
        color(grey)
        translate([(59.2-55.6)/2,41.4-32.3,0.1])
        cube([55.6,32.3-2.5,4.7], center=false);
        // viewable lcd part
        color(white)
        translate([(59.2-50)/2,41.4-25.4-5.2,0.2])
        cube([50,25.4,4.7], center=false);
    }
}

module M3(tr = [0,0,0], rt = 0) {
   transrot(tr,rt) translate(board_origin) color(red) cylinder(r=3/2, h=board_thickness);
}


module PINNED_CONNECTOR(headerHeight = 9, headerWidth = 2.54,headerNbPins = 8, headerPinHeight = 11.5) {
    // defaults valeus are for arduino sized connectors
    union() {
        // main body
        color(black)
        cube([headerWidth, headerWidth * headerNbPins, headerHeight], center=false);
        // pins through PCB
        color(silver)
        for (a = [ 1 : 1 : headerNbPins ])
          translate([2.54/2, a*2.54-2.54/2, headerHeight-headerPinHeight])
          cylinder(d1=0.64, d2=0.64, h=headerPinHeight, center=false);
    }
}


module ARDUINO_CONNECTORS(tr = [0,0,0], rt = 0) {
    transrot(tr,rt) 
    downside()
    union () {
        // 10 pins connector,
        translate([0, 17.526, 0])        
        PINNED_CONNECTOR(headerNbPins = 10);
        // 8 pins connector,
        translate([0, 44.45, 0])
        PINNED_CONNECTOR(headerNbPins = 8);
        // 8 pins connector,
        translate([49.53-1.27, 26.67, 0])
        PINNED_CONNECTOR(headerNbPins = 8);
        // 6 pins connector
        translate([49.53-1.27, 49.53, 0])
        PINNED_CONNECTOR(headerNbPins = 6);
    }
}



module 1X02_S(tr = [0,0,0], rt = 0) {
    transrot (tr,rt) 
    downside()
    color(white)
    translate([0,-1,3])
    cube(6,4.5,3, center=true);
}

//Created by generate-scad.ulp version 0.1
module pixljs(){
	board_thickness = 1.600000;
	eta = 0.1;
	board_size = [60.000000,52.500000,board_thickness];
	fn = 18;
	board_origin = [0.000000,0.000000];
    board_downside=0; //-(board_thickness);
	union(){
        // Board without components holes
		color("black")
        difference(){
            //Board
			translate(board_origin)
            cube(board_size); 
            // Holes
			translate([2.400,41.750,-eta])cylinder(r=0.500000, h=board_thickness+eta*2,$fn=fn); //hole
			translate([2.400,39.450,-eta])cylinder(r=0.500000, h=board_thickness+eta*2,$fn=fn); //hole
			translate([57.600,39.450,-eta])cylinder(r=0.500000, h=board_thickness+eta*2,$fn=fn); //hole
			translate([57.600,41.750,-eta])cylinder(r=0.500000, h=board_thickness+eta*2,$fn=fn); //hole
			translate([57.600,18.050,-eta])cylinder(r=0.500000, h=board_thickness+eta*2,$fn=fn); //hole
			translate([57.600,20.350,-eta])cylinder(r=0.500000, h=board_thickness+eta*2,$fn=fn); //hole
			translate([2.400,20.350,-eta])cylinder(r=0.500000, h=board_thickness+eta*2,$fn=fn); //hole
			translate([2.400,18.050,-eta])cylinder(r=0.500000, h=board_thickness+eta*2,$fn=fn); //hole
			translate([1.945,7.375,-eta])cylinder(r=0.750000, h=board_thickness+eta*2,$fn=fn); //hole
			translate([58.295,7.375,-eta])cylinder(r=0.750000, h=board_thickness+eta*2,$fn=fn); //hole
			translate([58.295,45.700,-eta])cylinder(r=0.750000, h=board_thickness+eta*2,$fn=fn); //hole
			translate([1.945,45.700,-eta])cylinder(r=0.750000, h=board_thickness+eta*2,$fn=fn); //hole
			translate([3.000,3.000,-eta])cylinder(r=1.600000, h=board_thickness+eta*2,$fn=fn); //hole
			translate([3.000,49.500,-eta])cylinder(r=1.600000, h=board_thickness+eta*2,$fn=fn); //hole
			translate([57.000,49.500,-eta])cylinder(r=1.600000, h=board_thickness+eta*2,$fn=fn); //hole
			translate([57.000,3.000,-eta])cylinder(r=1.600000, h=board_thickness+eta*2,$fn=fn); //hole
			translate([6.387,14.438,-eta])cylinder(r=0.508000, h=board_thickness+eta*2,$fn=fn); //1X04-S 1
			translate([8.927,14.438,-eta])cylinder(r=0.508000, h=board_thickness+eta*2,$fn=fn); //1X04-S 2
			translate([11.467,14.438,-eta])cylinder(r=0.508000, h=board_thickness+eta*2,$fn=fn); //1X04-S 3
			translate([14.007,14.438,-eta])cylinder(r=0.508000, h=board_thickness+eta*2,$fn=fn); //1X04-S 4
			translate([50.600,3.950,-eta])cylinder(r=0.400000, h=board_thickness+eta*2,$fn=fn); //H2-2.0-6X4.5MM +
			translate([48.600,3.950,-eta])cylinder(r=0.400000, h=board_thickness+eta*2,$fn=fn); //H2-2.0-6X4.5MM -
			translate([48.300,1.870,-eta])cylinder(r=0.508000, h=board_thickness+eta*2,$fn=fn); //1X02-S 1
			translate([50.840,1.870,-eta])cylinder(r=0.508000, h=board_thickness+eta*2,$fn=fn); //1X02-S 2
			translate([45.510,7.150,-eta])cylinder(r=0.400000, h=board_thickness+eta*2,$fn=fn); //JHD12864-G176BSW LEDA
			translate([14.720,7.150,-eta])cylinder(r=0.400000, h=board_thickness+eta*2,$fn=fn); //JHD12864-G176BSW LEDK
			translate([7.660,50.003,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO 0
			translate([10.200,50.257,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO 1
			translate([12.740,50.003,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO 2
			translate([15.280,50.257,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO 3
			translate([35.600,1.743,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO 3.3V
			translate([17.820,50.003,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO 4
			translate([20.360,50.257,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO 5
			translate([33.060,1.997,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO 5V
			translate([22.900,50.003,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO 6
			translate([25.440,50.257,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO 7
			translate([29.504,50.003,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO 8
			translate([32.044,50.257,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO 9
			translate([34.584,50.003,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO 10
			translate([37.124,50.257,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO 11
			translate([39.664,50.003,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO 12
			translate([42.204,50.257,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO 13
			translate([20.360,1.997,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO A0
			translate([17.820,1.743,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO A1
			translate([15.280,1.997,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO A2
			translate([12.740,1.743,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO A3
			translate([10.200,1.997,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO A4
			translate([7.660,1.743,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO A5
			translate([47.284,50.257,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO AREF
			translate([44.744,50.003,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO GND
			translate([27.980,1.997,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO GND.
			translate([30.520,1.743,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO GND..
			translate([40.680,1.743,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO I/OREF
			translate([43.220,1.997,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO N/C
			translate([38.140,1.997,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO RESET
			translate([52.364,50.257,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO SCL
			translate([49.824,50.003,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO SDA
			translate([25.440,1.743,-eta])cylinder(r=0.450000, h=board_thickness+eta*2,$fn=fn); //ARDUINO VIN
			translate([57.251,33.405,-eta])cylinder(r=0.600000, h=board_thickness+eta*2,$fn=fn); //USB-MICROB P$3
			translate([57.200,26.420,-eta])cylinder(r=0.600000, h=board_thickness+eta*2,$fn=fn); //USB-MICROB P$4
		}
        // Components added 
		TACT_MEDI_RIGHT_ANGLE([2.400,40.600,0],90);  //BTN1 
		TACT_MEDI_RIGHT_ANGLE([57.600,40.600,0],270);  //BTN2 
		TACT_MEDI_RIGHT_ANGLE([57.600,19.200,0],270);  //BTN3 
		TACT_MEDI_RIGHT_ANGLE([2.400,19.200,0],90);  //BTN4 
		C0603K([24.400,21.800,board_downside],90);  //C1 1uF 25v
		C0603K([27.800,22.800,board_downside],180);  //C2 1uF 25v
		C0603K([13.800,36.300,board_downside],0);  //C3 10uF 6.3v
		C0603K([47.000,14.400,board_downside],90);  //C4 1uF 25v
		C0603K([19.400,26.200,board_downside],270);  //CTUNE1 TBD
		C0603K([18.100,25.300,board_downside],270);  //CTUNE2 TBD
		SOD323_W([50.300,17.100,board_downside],0);  //D1 
		SOD323_W([41.200,17.200,board_downside],270);  //D2 NO_FIT
		//translate([10.197,14.438,board_downside])1X04_S();  //DBG 
		SOT23_5([44.200,14.500,board_downside],90);  //IC2 MIC5225-3.3	//translate([49.600,3.200,board_downside])rotate([0,0,180])H2_2_0_6X4_5MM();  //J1 2p-2.0
		SMT_JUMPER_3_1_NC_TRACE_NO_SILK([44.800,17.100,board_downside],180);  //JP1 COINCELL_VREG
		SMT_JUMPER_3_NO_NO_SILK([40.920,5.540,board_downside],0);  //JP2 5VSRC
		1X02_S([49.570,1.870,board_downside],0);  //PWR 
		R0603([11.100,22.400,board_downside],270);  //R1 100
		JHD12864_G176BSW([0.620,5.750,0],0);  //U$1 JHD12864
		MDBT40([8.400,29.880,board_downside],90);  //U$2 MDBT42Q
		CR2032_SMD([41.500,33.050,board_downside],90);  //U$3 CR2032-SMD
		ARDUINO_CONNECTORS([2*35.600-0*2.54,2*26.000,board_downside],270);  //U$4 ARDUINO
		USB_MICROB([57.200,29.900,board_downside],90);  //U$5 USB-MICROB
		R1210([52.750,14.600,board_downside],180);  //U$6 PTCFUSE
		M3([3.000,3.000,0],0);  //U$7 
		M3([3.000,49.500,0],0);  //U$8 
		M3([57.000,49.500,0],0);  //U$9 
		M3([57.000,3.000,0],0);  //U$10 
	}
}

pixljs(); //Show module

