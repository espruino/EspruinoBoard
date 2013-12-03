// Screwable Box for Espruino

PCB_LENGTH = 54;
PCB_WIDTH = 41.5;
PCB_HEIGHT = 8;

// It's so close, let's just make it square
BOXX = 55;// PCB_LENGTH+1;
BOXY = 55; //PCB_WIDTH+14;
BOXZ = PCB_HEIGHT+2;

box_bottom(BOXX, BOXY, BOXZ);
translate([0,BOXY+5,4]) scale([1,1,-1]) box_top(BOXX, BOXY, 4);

//color("red") translate([0,0,2+PCB_HEIGHT/2]) cube([PCB_LENGTH, PCB_WIDTH, PCB_HEIGHT], center=true);

module box_bottom(width, length, height) {
  screw_inner = 1.75;
  screw_outer = 4;
  border = 2;
  sw = width/2 - screw_outer/2;
  sl = length/2 - screw_outer/2;
  for (i = [ [  -sw,  -sl,   0],
          [ sw, -sl, 0],
          [ sw, sl, 0],
          [ -sw, sl, 0] ]) {
    translate(i)
    difference() {
      cylinder(h = height, r=screw_outer, $fs=1);
      translate([0,0,2]) cylinder(h = height, r=screw_inner, $fs=1);
   }
  };
 // sides
 translate([width/2+1,0,height/2]) cube([border,sl*2,height], center=true);
 translate([-(width/2+1),0,height/2]) cube([border,sl*2,height], center=true);
 translate([0,length/2+1,height/2]) cube([sw*2,border,height], center=true); 
 translate([0,-(length/2+1),height/2]) cube([sw*2,border,height], center=true); 
// bottom
 translate([0,0,1]) cube([sw*2+screw_outer,sl*2+screw_outer,border], center=true);
}

module box_top(width, length, height) {
 screw_inner = 2;
 screw_outer = 4;
 border = 2;
 sw = width/2 - screw_outer/2;
 sl = length/2 - screw_outer/2;
 difference() {
  union() {
   for (i = [ [  -sw,  -sl,   0],
          [ sw, -sl, 0],
          [ sw, sl, 0],
          [ -sw, sl, 0] ]) {
    translate(i) cylinder(h = height, r=screw_outer, $fs=1);
  }
  // sides
  translate([width/2+1,0,height/2]) cube([border,sl*2,height], center=true);
  translate([-(width/2+1),0,height/2]) cube([border,sl*2,height], center=true);
  translate([0,length/2+1,height/2]) cube([sw*2,border,height], center=true); 
  translate([0,-(length/2+1),height/2]) cube([sw*2,border,height], center=true); 
  // top
  translate([0,0,1+height-border]) cube([sw*2+screw_outer*2,sl*2,border], center=true);
  translate([0,0,1+height-border]) cube([sw*2,sl*2+screw_outer*2,border], center=true);
 }
 union() {
  for (i = [ [  -sw,  -sl,   0],
          [ sw, -sl, 0],
          [ sw, sl, 0],
          [ -sw, sl, 0] ]) {
   translate(i) translate([0,0,-1]) cylinder(h = height+2, r=screw_inner, $fs=1);
   translate(i) translate([0,0,height-2]) cylinder(h = 2.1, r1 = screw_inner, r2 = screw_inner+2, $fs=1); 
   }
  }
 }
}