// Copyright (c) 2013 Gordon Williams, Pur3 Ltd. See the file LICENSE for copying permission.
//
// Simple Box for Espruino
// Taller to allow room for LiPo phone battery to be slotted in
// Open at one end so Espruino slides in
// Can be 3D printed on end

$fn = 50;
INNER_RAD = 8.0;
INNER_LENGTH = 60;
INNER_WIDTH = 42.5;
THICKNESS = 0.6;
END_THICKNESS = 1;
OUTER_RAD = INNER_RAD + THICKNESS;
OUTER_LENGTH = INNER_LENGTH + END_THICKNESS*2;
OUTER_WIDTH = INNER_WIDTH + THICKNESS*2;
GRIP_SIZE = 1.5;
GRIP_OFFSET = 0;

module shape(w,r,l) {
 union() {
  translate([(w/2)-r,0,0]) cylinder(r=r,h=l,center=true);
  translate([r-(w/2),0,0]) cylinder(r=r,h=l,center=true);
  cube([w-r*2,r*2,l], center=true);
 }
}

module board_grip(w,tweak) {
 spacing = THICKNESS + 1.2;
 l = INNER_LENGTH;
 h = THICKNESS; 
 translate([0,-(spacing/2+h/2),0]) cube([w,h,l], center=true);
 translate([tweak,h/2+spacing/2,0]) cube([w,h,l], center=true);
}

module back_cutouts() {
 d = END_THICKNESS+0.2;
 o = -(END_THICKNESS + 0.1);
 translate([4.25,0.8+2,o]) cube([9.5,4.25,d], center=true); // USB
 translate([41/2 - 6.5,-(0.8+1.5),o]) cube([6,3,d], center=true); // Power
}

module side_cutouts() {
 r=2;
 h=THICKNESS+4;
 // buttons
 // ------------------------------------ UNCOMMENT THE NEXT 2 LINES FOR BUTTON HOLES
 // translate([13,0,26.5]) rotate(a=[90,0,0]) cylinder(r=r,h=h,center=true);
 // translate([13,0,38.5]) rotate(a=[90,0,0]) cylinder(r=r,h=h,center=true);
 // ------------------------------------
}

union() {
 difference() {
  translate([0,0,-THICKNESS]) shape(OUTER_WIDTH, OUTER_RAD, OUTER_LENGTH);
  union() {
   translate([0,GRIP_OFFSET,-INNER_LENGTH/2]) back_cutouts();
   shape(INNER_WIDTH, INNER_RAD, INNER_LENGTH+THICKNESS*2);
   translate([0,-(INNER_RAD+OUTER_RAD)/2,-INNER_LENGTH/2]) side_cutouts();
  }
 }
 translate([(INNER_WIDTH-GRIP_SIZE)/2,GRIP_OFFSET,0]) board_grip(GRIP_SIZE,-0.5);
 translate([(GRIP_SIZE-INNER_WIDTH)/2,GRIP_OFFSET,0]) board_grip(GRIP_SIZE,0.5);
}

