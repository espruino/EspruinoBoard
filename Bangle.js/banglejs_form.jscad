

function bangle() {
    function strap(s) {
      return union(cube({size:[5,19.6,1],center:true}).translate([23,0,-12.6/2-0.5]), // strap
          cylinder({start: [37.6/2,(33-9)/2,0], end: [60/2,(25-4)/2,-12], r1: 9/2, r2: 4/2}),
          cylinder({start: [37.6/2,-(33-9)/2,0], end: [60/2,-(25-4)/2,-12], r1: 9/2, r2: 4/2})).scale([s,1,1]);
    }
    
    function btnmid() {
      return union(
            cylinder({r: 6.5/2, h: 1}).translate([0,0,3]),
            cylinder({r: 5.6/2, h: 1}).translate([0,0,2]),
            cylinder({r1: 7.5/2, r2:6.6/2, h: 2}).translate([0,0,0])
          ).rotateX(-90);
    }
    
    function btnside() {
      return union(
            cylinder({r: 5.7/2, h: 1}).translate([0,0,2.5]),
            cylinder({r: 5.5/2, h: 0.5}).translate([0,0,2]),
            cylinder({r1: 7.5/2, r2:6.6/2, h: 2}).translate([0,0,0])
          ).rotateX(-90);
    }
    
  return difference(union(
      intersection(sphere({r: 50.5/2}), cylinder({r: 30, h: 12.6, center:true})), // body
      cylinder({r1: 38/2, r2: 40/2, h: 2.25}).translate([0,0,-(12.6/2 + 2.25)]), // base
      difference(
          cylinder({r1: 48.7/2, r2: 40.8/2, h: 2.4}).translate([0,0,12.6/2]), // ring
          cylinder({r1: 38/2, r2: 40.8/2, h: 1.3}).translate([0,0,12.6/2 + (2.4-1.3)]) // inner ring
      ),
      cylinder({r:2.6/2, h: 1}).translate([34/2,29/2,-(12.6/2 + 1)]), // screw
      cylinder({r:2.6/2, h: 1}).translate([34/2,-29/2,-(12.6/2 + 1)]), // screw
      cylinder({r:2.6/2, h: 1}).translate([-34/2,-29/2,-(12.6/2 + 1)]), // screw
      cylinder({r:2.6/2, h: 1}).translate([-34/2,29/2,-(12.6/2 + 1)]), // screw
      strap(1),strap(-1),
      btnmid().translate([0,49/2,0]),
      btnside().translate([0,49/2,0]).rotateZ(29.5),
      btnside().translate([0,49/2,0]).rotateZ(-29.5)
      ),union(
      cylinder({r:10/2, h: 0.1, center: true}).translate([0,0,-(12.6/2 + 2.25)]), // HRM
      union(
        cylinder({r:4.5/2, h: 0.2, center: true}).translate([0,(13.3-4.5)/2,0]),
        cylinder({r:4.5/2, h: 0.2, center: true}).translate([0,-(13.3-4.5)/2,0]),
        cube({size:[4.5,13.3-4.5,0.2], center: true})
      ).translate([14,0,-(12.6/2 +2.25)]) // charge
    ));
}


function main () {
    
    return bangle();
}
