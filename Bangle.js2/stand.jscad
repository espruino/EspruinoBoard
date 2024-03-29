var ex = true; // EXPORT!
var T = 2.9; // thickness
var psuCase = false;
var bangleheight = 31;
var bangleoffset = 10;
var p1offset = bangleoffset-6+T/2, p1w=44, p1peg=13, p1pegw=12, p1peg2w=p1peg*2+p1pegw+6;
var p2offset = bangleoffset-6-T/2, p2w=44, p2peg=p1peg, p2pegw=p1pegw, p2peg2w=p1peg2w;
var p3offset = bangleoffset-30, p3peg=25;
var spw=15;
var bppegw=10, bppegoffset = 7.5, bppeg2w=3, bppeg2offset=bangleheight+8, bppegwo=spw+3;
var basepegw = 30, basepegh = 30, baseheight = 29;
var sidePlateSpacing = 15;
var bcount = 1;
var bspacing = 75;
var chargerY = 9.9;

function spread(obj, fillwidth, h, r, spreadextra) {
    var p = [];
    var spx = bspacing+(0|spreadextra);
    for (var i=0;i<bcount;i++) {
      p.push(obj.translate([i*spx,0,0]));
      if (fillwidth && i>0) {
        var offs = (i-0.5)*spx;
        var sx = bspacing-fillwidth;
        var c = cube({size:[sx,h,3], center:true}).translate([offs,h/2,1.5]);
        if (!r) p.push(c);
        else p.push(difference(c,
            cube({size:[sx-r*2,r,10], center:true}).translate([offs,h-r/2,0]),
            cylinder({r:r, h: 10, center:true}).translate([offs+r-sx/2,h,0]),
            cylinder({r:r, h: 10, center:true}).translate([offs-r+sx/2,h,0])
        ));
      }
    }
    return union.apply(null,p);
}


function basePlate(cutouts) {
  var r = 4, w=75, h=psuCase ? 74 : 36, o=psuCase ? 15 : 0;
  var cableWidth = 3;
  var plate =  union(
          cube({size:[w+r*2,h,T], center:true}),
          cube({size:[w,h+r*2,T], center:true}),
          cylinder({r:r, h: T, center:true}).translate([w/2,h/2,0]),
          cylinder({r:r, h: T, center:true}).translate([-w/2,h/2,0]),
          cylinder({r:r, h: T, center:true}).translate([w/2,-h/2,0]),
          cylinder({r:r, h: T, center:true}).translate([-w/2,-h/2,0])
      );
      
  if (psuCase) // cutouts for faceplate
    plate = difference(
      plate, 
      cube({size:[basepegw,T,5], center:true}).translate([0,-(2.5+h/2),0]),
      cube({size:[basepegw,T,5], center:true}).translate([0,2.5+h/2,0])
      );
  else // cutouts for elastic band
    plate = difference(
      plate, 
      cylinder({r:1, h: 5, center:true}).translate([w/2-7,(r+h/2),0]),
      cylinder({r:1, h: 5, center:true}).translate([7-w/2,(r+h/2),0]),
      cylinder({r:1, h: 5, center:true}).translate([w/2-7,-(r+h/2),0]),
      cylinder({r:1, h: 5, center:true}).translate([7-w/2,-(r+h/2),0])
      );
      
  if (cutouts=="no_cutouts") return plate;
   if (cutouts=="top") return difference(
      plate,
      cylinder({r:7/2, h: 5, center:true}).translate([14,o+bangleoffset,0]), // body...
      cylinder({r:7/2, h: 5, center:true}).translate([-14,o+bangleoffset,0]), 
      cube({size:[28,7,5], center:true}).translate([0,o+bangleoffset,0]),
      // pegs
      cube({size:[p1w,T,5], center:true}).translate([0,o+p1offset,0]),
      cube({size:[p2w,T,5], center:true}).translate([0,o+p2offset,0]),
      cube({size:[T,spw,5], center:true}).translate([sidePlateSpacing,o+p2offset-(spw/2)-T/2,0]), //sideplate
      cube({size:[T,spw,5], center:true}).translate([-sidePlateSpacing,o+p2offset-(spw/2)-T/2,0]), //sideplate
      cube({size:[7,4.5,5], center:true}).translate([sidePlateSpacing-2.2,o+p2offset-3.5,0]), // hole for plug to poke through
      cube({size:[sidePlateSpacing*2,3,5], center:true}).translate([0,o+p2offset-T,0]), // hole for wire
      cube({size:[T+sidePlateSpacing*2,5,5], center:true}).translate([0,o+p2offset+T,0]) // hole for front of charger/pegs
      //cube({size:[5,T,5], center:true}).translate([-p3peg,o+p3offset,0]),
      //cube({size:[5,T,5], center:true}).translate([p3peg,o+p3offset,0])
     ).translate([0,0,T/2]).setColor(hsl2rgb(0.1,1,0.5));  
  if (cutouts=="mid") return difference(
      plate,
      cylinder({r:7/2, h: 5, center:true}).translate([14,o+bangleoffset,0]), // body...
      cylinder({r:7/2, h: 5, center:true}).translate([-14,o+bangleoffset,0]), 
      cube({size:[28,7,5], center:true}).translate([0,o+bangleoffset,0]),      
      // pegs
      cube({size:[p2pegw,T*2,5], center:true}).translate([-p2peg,o+p2offset+T/2,0]),
      cube({size:[p2pegw,T*2,5], center:true}).translate([p2peg,o+p2offset+T/2,0]), // includes p1 peg too
      
      cube({size:[sidePlateSpacing*2,T,5], center:true}).translate([0,o+p2offset+T*2,0]), // bodge bit - just remove extra peg bit we didn't want
      //cube({size:[5,T,5], center:true}).translate([-p3peg,o+p3offset,0]),
      //cube({size:[5,T,5], center:true}).translate([p3peg,o+p3offset,0])
      // cutouts for sliding in
      cube({size:[p2peg2w,T,5], center:true}).translate([0,o+p2offset+T*2,0]),
      cube({size:[T,bppegwo,5], center:true}).translate([-sidePlateSpacing,o+p2offset-(bppegoffset+T),0]), //sideplate
      cube({size:[T,bppegwo,5], center:true}).translate([sidePlateSpacing,o+p2offset-(bppegoffset+T),0]),  //sideplate
      // cable
      cube({size:[cableWidth,16,5], center:true}).translate([0,o-16,0]),  
      cube({size:[4,cableWidth,5], center:true}).translate([8.5,o-cableWidth/2,0]),
      difference( // curve for cable
          cylinder({r:8, h: 5, center:true}),
          cylinder({r:8-cableWidth, h: 5, center:true}),
          cube({size:[20,20,5], center:true}).translate([10,0,0]),
          cube({size:[20,20,5], center:true}).translate([0,-10,0])
          ).translate([8-(cableWidth/2),o-8,0])
     ).translate([0,0,T/2]).setColor(hsl2rgb(0.1,1,0.5));
  if (cutouts=="bottom") return difference(
      plate,
      // pegs
      cube({size:[p2peg2w,T,5], center:true}).translate([0,o+p2offset,0]),
      cube({size:[p1peg2w,T,5], center:true}).translate([0,o+p1offset,0]),
      cube({size:[T,bppegw,5], center:true}).translate([sidePlateSpacing,o+p2offset-(bppegoffset+T/2),0]), //sideplate
      cube({size:[T,bppegw,5], center:true}).translate([-sidePlateSpacing,o+p2offset-(bppegoffset+T/2),0]) //sideplate
      
      //cube({size:[5,3,5], center:true}).translate([-p3peg,o+p3offset,0]),
      //cube({size:[5,3,5], center:true}).translate([p3peg,o+p3offset,0])
     ).translate([0,0,T/2]).setColor(hsl2rgb(0.1,1,0.5));
}

function baseSide() {
  var w=75, h=baseheight;
  return union(
          cube({size:[w,h,T], center:true}),
          cube({size:[basepegw,T,T], center:true}).translate([0,-(1.5+h/2),0]),
          cube({size:[basepegw,T,T], center:true}).translate([0,1.5+h/2,0])
      );   
}

// sits right in front of the charge cable
function plate1() {
  var wr = 6.5,ww=39.5,wh=wr+1; // watch cutout dimensions
  var m = bangleheight-3, h = 5, r=4;
  return difference(
      union(
        cube({size:[p1w-r*2,h,T],center:true}).translate([0,h/2,0]), // top part (between rounded corners)
        cube({size:[p1w,h-r,T],center:true}).translate([0,(h-4)/2,0]), // bottom part (unrounded)
        cube({size:[p1peg2w,T,T],center:true}).translate([0,-T/2,0]), // bottom peg top
        cube({size:[p1pegw,T,T],center:true}).translate([-p1peg,-T*1.5,0]), // bottom peg mid
        cube({size:[p1pegw,T,T],center:true}).translate([p1peg,-T*1.5,0]), // bottom peg mid
        cube({size:[p1peg2w,T,T],center:true}).translate([0,-T*2.5,0]), // bottom peg bottom
        cylinder({r:r, h: T, center:true}).translate([p1w/2-r,h-r,0]), // rounded corners
        cylinder({r:r, h: T, center:true}).translate([r-p1w/2,h-r,0])
      ).translate([0,0,T/2]),
        
      cylinder({r:wr, h: 10, center:true}).translate([ww/2-wr,wh,0]), // back
      cylinder({r:wr, h: 10, center:true}).translate([wr-ww/2,wh,0]),
      cube({size:[ww-wr*2,wr*2,10],center:true}).translate([0,wh,0])
      
     ).translate([0,0,0]).setColor(hsl2rgb(0.2,1,0.5));
}

// the one with the charge cable
function plate2() {
  var chargPlugWidth = 6.3-0.35;
  var chargPlugTopWidth = 5.7-0.25;
  var m = bangleheight, h = m, w=p2w;
  var rounding = 10;
  return difference(
      union(
        cube({size:[w,h,T],center:true}).translate([0,h/2,0]),
        cube({size:[p2w,T,T],center:true}).translate([0,-T/2,0]), // bottom peg top
        cube({size:[p2pegw,T,T],center:true}).translate([-p2peg,-T*1.5,0]), // bottom peg mid
        cube({size:[p2pegw,T,T],center:true}).translate([p2peg,-T*1.5,0]), // bottom peg mid
        cube({size:[p2peg2w,T,T],center:true}).translate([0,-T*2.5,0]), // bottom peg bottom
        //actual body
        cylinder({r:rounding, h: T, center:true}).translate([w/2-rounding,m,0]), // either side
        cylinder({r:rounding, h: T, center:true}).translate([-(w/2-rounding),m,0]),
        cube({size:[w-rounding*2,rounding*2,T],center:true}).translate([0,m,0]), // bottom peg bottom
        []//cube({size:[1,1,T*2],center:true}).translate([-10,9+6.4+chargerY-12,0]) // TEST
      ).translate([0,0,T/2]),   
      union(
        cylinder({r:chargPlugWidth/2, h: 10, center:true}), // charge cable top
        cube({size:[chargPlugWidth,15.5,10], center:true}).translate([0,-15.5/2,0]), // charge cable body
        cube({size:[chargPlugTopWidth,10,10], center:true}).translate([0,-17 - 3/2,0]) // charge cable stress relief
      ).rotateZ(180).translate([-13.5,chargerY,0]),
      cylinder({r:7.5, h: 10, center:true}).translate([0,chargerY+7,0]), // HRM
      cube({size:[T,bppeg2w+2,10], center:true}).translate([sidePlateSpacing,bppeg2offset+1,0]), // basePlate peg
      cube({size:[T,bppeg2w+2,10], center:true}).translate([-sidePlateSpacing,bppeg2offset+1,0]) // basePlate peg
     ).translate([0,0,0]).setColor(hsl2rgb(0.3,1,0.5));
}

function sidePlate(cutout) {
    var w=spw, h=45.5+bangleheight-36, r=spw;
    var p = union(
        intersection(
            union(
                cylinder({r:r, h: T, center:true}).translate([0,h-r,0]),
                cube({size:[w,h-r,T],center:true}).translate([w/2,(h-r)/2,0])
            ), cube({size:[w,h,T],center:true}).translate([w/2,h/2,0])),
            cube({size:[spw,T,T], center:true}).translate([bppegoffset,-T/2,0]), // bottom peg
            cube({size:[bppegwo,T,T], center:true}).translate([bppegoffset+T/2,-T*1.5,0]), // bottom peg mid
            cube({size:[bppegw,T,T], center:true}).translate([bppegoffset,-T*2.5,0]), // bottom peg bottom
            cube({size:[T*2-1,bppeg2w,T], center:true}).translate([-(T*2-1)/2,bppeg2offset,0]), // top 'hook'
            cylinder({r:1, h: T, center:true}).translate([- (T*2-1),bppeg2offset+0.5,0]), // top 'hook'
            cube({size:[T,bppeg2w+1,T], center:true}).translate([-T*3/2,bppeg2offset-1.5,0]) // top 'hook'
        );
    if (!cutout) return p;
    var co = 7.4-T;
    return difference(p,
        cube({size:[co,21,10], center:true}).translate([co/2,chargerY+19.5-12,0]), // main plug
        cube({size:[co,15,10], center:true}).translate([-1+co/2,chargerY+28.5-12,0]) // plug cable
        //cube({size:[3,10,10], center:true}).translate([1.5,0,0])
    );
}




function main () {
    var oy = 56, ox = 7.5;
 
    var base = spread(basePlate("top"));
    if (psuCase)
      base = difference(
        base, 
        cylinder({r:12/2, h: 10, center:true}).translate([3*bspacing/2,0,0]), // charge cable
        cylinder({r:12/2, h: 10, center:true}).translate([7*bspacing/2,0,0]) // charge cable
    );

    var p1 = spread(plate1(),38,9,0);
    var p2 = spread(plate2(),45,20,10);

    var b = union(
        base.translate([0,psuCase ? -15 : 0,0]),
        psuCase&&!ex ? spread(basePlate("no_cutouts")).translate([0,-15,-(28+T/2)]) : [],
      //  ex?[]:spread(basePlate("mid")).translate([0,0,-T]),
//        ex?[]:spread(basePlate("bottom")).translate([0,0,-T*2]),
        ex?[]:p1.rotateX(90).translate([0,p1offset+T/2,T]),
        ex?[]:p2.rotateX(90).translate([0,p2offset+T/2,T]),
        ex?[]:spread(sidePlate().rotateX(90).rotateZ(-90),0).translate([sidePlateSpacing,p2offset-T/2,T]),
        ex?[]:spread(sidePlate(true).rotateX(90).rotateZ(-90),0).translate([-sidePlateSpacing,p2offset-T/2,T])
       // ex?[]:spread(bangle()).rotateX(-90).translate([0,bangleoffset,bangleheight])
    );
    if (!ex) return b;
    if (bcount==1)  // THIS IS THE FLAT VERSION
        return union(b, 
                spread(basePlate("mid")).translate([0,-45,0]),
                spread(basePlate("bottom")).translate([0,-90,0]),
            union(
            p2.rotateZ(90).translate([-10,-11,0]),
            p1.rotateZ(-90).translate([26,-11,0]),
            sidePlate(true).rotateZ(0).scale([1,1,1]).translate([30,-24,T/2]),
            sidePlate().rotateZ(0).scale([-1,1,1]).translate([17,-24,T/2])
            ).translate([ox+2,oy]));
   else
        return union(b,
            psuCase ? spread(basePlate("no_cutouts")).translate([0,-98,0]) : [],
            spread(baseSide()).translate([0,-157,0]),
            spread(baseSide()).translate([0,-192,0]),
            union(
                p2.rotateZ(0).translate([0,-22,0]),
                spread(sidePlate(true).rotateZ(90),0,0,0,7).translate([8+21,47,0]),
                spread(sidePlate().rotateZ(90),0,0,0,7).translate([8-20,48,0])
            ).translate([ox,oy]));
}
