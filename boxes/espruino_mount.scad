// Copyright (c) 2013 Gordon Williams, Pur3 Ltd. See the file LICENSE for copying permission.
//
// PCB mount for Espruino. Print, flex apart, insert Espruino and then screw down


PCB_LENGTH = 54+1;
PCB_WIDTH = 41.5+1;
PCB_HEIGHT = 1;
BORDER = 1;

module tab() {
 difference() {
  union() {
    translate([3,0,0]) cube([6,12,BORDER], center=true);
    translate([6,0,0]) cylinder(r=6,h=BORDER,center=true);
  }
  translate([6,0,0]) cylinder(r=2,h=BORDER*3,center=true);  
 }
}

TABX = PCB_WIDTH/2;
TABY = 20;
TABZ = -(BORDER/2 + PCB_HEIGHT/2);
union() {
 difference() {
  union() {
    cube([PCB_WIDTH+BORDER*2,PCB_LENGTH+BORDER*2,PCB_HEIGHT+BORDER*2], center=true);  
    translate([TABX,TABY,TABZ]) tab();
    translate([TABX,-TABY,TABZ]) tab();
    translate([-TABX,TABY,TABZ]) rotate([0,0,180]) tab();
    translate([-TABX,-TABY,TABZ]) rotate([0,0,180]) tab();
  }
  union() {
    cube([PCB_WIDTH,PCB_LENGTH,PCB_HEIGHT], center=true); // PCB
    cube([PCB_WIDTH-BORDER*2,PCB_LENGTH-BORDER*2,PCB_HEIGHT+BORDER*4], center=true); // PCB cutout
    translate([0,PCB_LENGTH/2,0])  cube([BORDER,BORDER*8,PCB_HEIGHT+BORDER*4], center=true); // opening cutout
  }
 }
}
