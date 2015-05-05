// Copyright (c) 2013 Gordon Williams, Pur3 Ltd.
// Copyright (c) 2015 Alexander Brevig. 
// See the file LICENSE for copying permission.
//
// Simple Box cover for espruino_box
// Cover slides in behind the Espruino
// Can be 3D printed on end

/*
Fill in values from your espruino_box print
*/
INNER_RAD = 6.5;
INNER_WIDTH = 42.5;
THICKNESS = 0.6;

/* 
Configure connecting areas 
*/
COVER_THICKNESS = 3;   // the base thickness
CONNECTING_HEIGHT = 5; // you need this amount of space available 
                       // 'behind' your Espruino while it's in its box
CONNECTING_WIDTH = 1.6;// This is calculated from 

// Calculated values, do not manually update unless you have a good reason
END_THICKNESS = THICKNESS + 1.2; 
OUTER_RAD = INNER_RAD + THICKNESS;
OUTER_WIDTH = INNER_WIDTH + THICKNESS*2;

module shape(w,r,l) {
 union() {
  translate([(w/2)-r,0,0]) cylinder(r=r,h=l,center=true);
  translate([r-(w/2),0,0]) cylinder(r=r,h=l,center=true);
  cube([w-r*2,r*2,l], center=true);
 }
}

union(){
 difference() {
  translate([0,0,0]) 
     shape(OUTER_WIDTH, OUTER_RAD, COVER_THICKNESS);
 }
 
 accountForCurve = 0.5;
 translate([0,CONNECTING_WIDTH+THICKNESS/2,COVER_THICKNESS+CONNECTING_HEIGHT]/2) 
    cube([INNER_WIDTH-accountForCurve,CONNECTING_WIDTH,CONNECTING_HEIGHT], center=true);
 
}
