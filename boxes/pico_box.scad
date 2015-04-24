// Copyright (c) 2015 Elena Grandi See the file LICENSE for copying permission.

BOARD_LENGTH = 23;
BOARD_WIDTH = 15;
BOARD_HEIGHT = 2;
COMP_HEIGHT = 3;
// Uncomment the first value if you want to have something soldered to the 
// pins, the second if you just want the espruino pico.
//PIN_HEIGHT = 9;
PIN_HEIGHT = 0.8;
WALL = 1.5;
CLEAR = 0.8;
USB_WIDTH = 12;
B_X = 5;
B_Y = 6;
B_R = 2;

// box
union() {
    difference() {
        cube([BOARD_WIDTH + WALL * 2 + CLEAR * 2,
            BOARD_LENGTH + WALL * 2 + CLEAR * 2,
            BOARD_HEIGHT + COMP_HEIGHT + PIN_HEIGHT + WALL * 2 ]);
        translate([WALL, WALL, WALL]) cube([BOARD_WIDTH + CLEAR * 2,
            BOARD_LENGTH +CLEAR * 2,
            BOARD_HEIGHT + COMP_HEIGHT + PIN_HEIGHT + WALL * 2]); 
        translate([WALL + (BOARD_WIDTH - USB_WIDTH) / 2, -1,
            COMP_HEIGHT + WALL]) 
            cube([USB_WIDTH + CLEAR * 2, WALL + 2, 
                BOARD_HEIGHT + PIN_HEIGHT + WALL + 1]);
        translate([B_X + WALL + CLEAR, B_Y + WALL + CLEAR, -1]) 
            cylinder(r=B_R, h=WALL + 2, $fn=16);
    }
    translate([WALL + (BOARD_WIDTH - USB_WIDTH) / 2 + CLEAR, 
        BOARD_LENGTH + WALL,
        WALL - 0.01])
            cube([USB_WIDTH + 0.01, CLEAR*3 + 0.01, COMP_HEIGHT]);
}

// lid
translate([BOARD_WIDTH + WALL * 2 + CLEAR * 2 + 10, 0, 0]) union() {
    cube([BOARD_WIDTH + WALL * 2 + CLEAR * 2,
        BOARD_LENGTH + WALL * 2 + CLEAR * 2,
        WALL]);
    translate([WALL + CLEAR/2, WALL + CLEAR/2, 0.01]) 
        cube([BOARD_WIDTH + CLEAR, BOARD_LENGTH + CLEAR, WALL * 2]);
}
