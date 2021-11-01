var ex = true; // EXPORT!
var T = 2.7; // thickness
var psuCase = false;
var bangleheight = 36;
var bangleoffset = 10;
var p2offset = bangleoffset-6-T/2, p2w=40, p2peg=13, p2pegw=12, p2peg2w=p2peg*2+p2pegw+6;
var p3offset = bangleoffset-30, p3peg=25;
var spw=15;
var bppegw=10, bppegoffset = 7.5, bppeg2w=3, bppeg2offset=44, bppegwo=spw+3;
var basepegw = 30, basepegh = 30, baseheight = 29;
var sidePlateSpacing = 15;
var bcount = 1;
var bspacing = 75;
var chargerY = 9.4;

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
  var r = 4, w=75, h=psuCase ? 74 : 40, o=psuCase ? 15 : 0;
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
      //cube({size:[T,5,5], center:true}).translate([11,o+bangleoffset,0]), // other buttons
      //cube({size:[T,5,5], center:true}).translate([-11,o+bangleoffset,0]), // other buttons      
      // pegs
      cube({size:[p2w,T,5], center:true}).translate([0,o+p2offset,0]),
      cube({size:[T,spw,5], center:true}).translate([sidePlateSpacing,o+p2offset-(spw/2)-T/2,0]), //sideplate
      cube({size:[T,spw,5], center:true}).translate([-sidePlateSpacing,o+p2offset-(spw/2)-T/2,0]), //sideplate
      cube({size:[6,5,5], center:true}).translate([sidePlateSpacing,o+p2offset-4,0]), // hole for plug
      cube({size:[9,4,5], center:true}).translate([sidePlateSpacing-3,o+p2offset-3,0]) // hole for cable
      
      //cube({size:[5,T,5], center:true}).translate([-p3peg,o+p3offset,0]),
      //cube({size:[5,T,5], center:true}).translate([p3peg,o+p3offset,0])
     ).translate([0,0,T/2]).setColor(hsl2rgb(0.1,1,0.5));  
  if (cutouts=="mid") return difference(
      plate,
      // pegs
      cube({size:[p2pegw,T,5], center:true}).translate([-p2peg,o+p2offset,0]),
      cube({size:[p2pegw,T,5], center:true}).translate([p2peg,o+p2offset,0]),
      //cube({size:[5,T,5], center:true}).translate([-p3peg,o+p3offset,0]),
      //cube({size:[5,T,5], center:true}).translate([p3peg,o+p3offset,0])
      // cutouts for sliding in
      cube({size:[p2peg2w,T,5], center:true}).translate([0,o+p2offset+T*2,0]),
      cube({size:[T,bppegwo,5], center:true}).translate([-sidePlateSpacing,o+p2offset-(bppegoffset+T),0]), //sideplate
      cube({size:[T,bppegwo,5], center:true}).translate([sidePlateSpacing,o+p2offset-(bppegoffset+T),0]),  //sideplate
      // cable
      cube({size:[2.3,12,5], center:true}).translate([0,o-18,0]),  
      cube({size:[4,2.3,5], center:true}).translate([8.5,o-4-1.1,0]),
      difference( // curve
          cylinder({r:8, h: 5, center:true}),
          cylinder({r:8-2.3, h: 5, center:true}),
          cube({size:[20,20,5], center:true}).translate([10,0,0]),
          cube({size:[20,20,5], center:true}).translate([0,-10,0])
          ).translate([8-1.1,o-12,0])
     ).translate([0,0,T/2]).setColor(hsl2rgb(0.1,1,0.5));
  if (cutouts=="bottom") return difference(
      plate,
      // pegs
      cube({size:[p2peg2w,T,5], center:true}).translate([0,o+p2offset,0]),
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

// the one with the charge cable
function plate2() {
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
        cylinder({r:rounding, h: T, center:true}).translate([w/2-rounding,m,0]),
        cylinder({r:rounding, h: T, center:true}).translate([-(w/2-rounding),m,0]),
        cube({size:[w-rounding*2,rounding*2,T],center:true}).translate([0,m,0]), // bottom peg bottom
        []//cube({size:[1,1,T*2],center:true}).translate([-10,9+6.4+chargerY-12,0]) // TEST
      ).translate([0,0,T/2]),   
      union(
        cylinder({r:6.3/2, h: 10, center:true}), // charge cable top
        cube({size:[6.3,17,10], center:true}).translate([0,-17/2,0]), // charge cable body
        cube({size:[5.7,7,10], center:true}).translate([0,-17 - 7/2,0]) // charge cable stress relief
      ).rotateZ(180).translate([-13.5,chargerY,0]),
      cylinder({r:7.5, h: 10, center:true}).translate([0,chargerY+7,0]), // HRM
      cube({size:[T,bppeg2w+2,10], center:true}).translate([sidePlateSpacing,bppeg2offset+1,0]), // basePlate peg
      cube({size:[T,bppeg2w+2,10], center:true}).translate([-sidePlateSpacing,bppeg2offset+1,0]) // basePlate peg
     ).translate([0,0,0]).setColor(hsl2rgb(0.3,1,0.5));
}

function sidePlate(cutout) {
    var w=spw, h=45.5, r=spw;
    var p = union(
        intersection(
            union(
                cylinder({r:r, h: T, center:true}).translate([0,h-r,0]),
                cube({size:[w,h-r,T],center:true}).translate([w/2,(h-r)/2,0])
            ), cube({size:[w,h,T],center:true}).translate([w/2,h/2,0])),
            cube({size:[spw,T,T], center:true}).translate([bppegoffset,-T/2,0]), // bottom peg
            cube({size:[bppegwo,T,T], center:true}).translate([bppegoffset+T/2,-T*1.5,0]), // bottom peg mid
            cube({size:[bppegw,T,T], center:true}).translate([bppegoffset,-T*2.5,0]), // bottom peg bottom
            cube({size:[4,bppeg2w,T], center:true}).translate([-2,bppeg2offset,0]), // top 'hook'
            cylinder({r:1, h: T, center:true}).translate([-4,bppeg2offset+0.5,0]), // top 'hook'
            cube({size:[2,bppeg2w+1,T], center:true}).translate([-4,bppeg2offset-1.5,0]) // top 'hook'
        );
    if (!cutout) return p;
    var co = 7.3-T;
    return difference(p,
        cube({size:[co,20,10], center:true}).translate([co/2,chargerY+19-12,0]), // main plug
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

    var p2 = spread(plate2(),45,20,10);

    var b = union(
        base.translate([0,psuCase ? -15 : 0,0]),
        psuCase&&!ex ? spread(basePlate("no_cutouts")).translate([0,-15,-(28+T/2)]) : [],
      //  ex?[]:spread(basePlate("mid")).translate([0,0,-T]),
//        ex?[]:spread(basePlate("bottom")).translate([0,0,-T*2]),
        ex?[]:p2.rotateX(90).translate([0,p2offset+T/2,T]),
        ex?[]:spread(sidePlate().rotateX(90).rotateZ(-90),0).translate([sidePlateSpacing,p2offset-T/2,T]),
        ex?[]:spread(sidePlate(true).rotateX(90).rotateZ(-90),0).translate([-sidePlateSpacing,p2offset-T/2,T]),
        ex?[]:plate3().rotateX(90).translate([0,p3offset+1.5,3]),
        ex?[]:spread(bangle()).rotateX(-90).translate([0,bangleoffset,bangleheight])
    );
    if (!ex) return b;
    if (bcount==1) 
        return union(b, 
                spread(basePlate("mid")).translate([0,-50,0]),
                spread(basePlate("bottom")).translate([0,-100,0]),
            union(
            p2.rotateZ(0).translate([8,-22,0]),
            sidePlate(true).rotateZ(0).scale([-1,1,1]).translate([-33,-3,0]),
            sidePlate().rotateZ(0).scale([-1,1,1]).translate([-17,-7,0])
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
