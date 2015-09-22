#!/bin/bash
# Makes a panel of other designs

cd `dirname $0`/../eagle
WD=`pwd`
EAGLE=eagle

cat > script.scr << EndOfMessage
DISPLAY ALL;
GRID mm 1 2 lines on alt mm 0.01 mm;
CLASS 0 default 12mil;
DRC LOAD $WD/dirt_cheap_dirty_boards.v1.dru;
LAYER Dimension;
SET WIRE_BEND 2; # point to point
WIRE 0.2032 (0 0) (100 0);
WIRE 0.2032 (100 0) (100 100);
WIRE 0.2032 (100 100) (0 100);
WIRE 0.2032 (0 100) (0 0);
EndOfMessage

# board name ROTATE X Y
function board()
{
echo "PASTE R$2 $WD/$1 ($3 $4);" >> script.scr
}

# mill x1 y1 x2 y2
function mill()
{
echo "LAYER Milling;" >> script.scr
echo "WIRE 0.8 ($1 $2) ($3 $4);" >> script.scr
}

# mill_horiz x1 y x2 bites
function mill_horiz()
{
  echo "# Horizontal Mill" >> script.scr
  BITES=$4
  NX1=$1
  Y=$2
  NX2=$3
  X1=`echo $NX1 - 2 | bc`
  X2=`echo $NX2 + 2 | bc`
  echo "LAYER Milling;" >> script.scr
  for i in `seq 0 $BITES`;
  do
    XX1=`echo "($X1 + ($X2 - $X1)*$i/($BITES + 1))+2" | bc`
    XX2=`echo "($X1 + ($X2 - $X1)*($i + 1)/($BITES + 1))-2" | bc`
    echo "WIRE 0.8 ($XX1 $Y) ($XX2 $Y);" >> script.scr
  done  
  for i in `seq 1 $BITES`;
  do
    XX2=`echo "$X1 + ((($X2 - $X1)*$i))/($BITES + 1)" | bc`
    XX1=`echo "$XX2 - 1" | bc`
    XX3=`echo "$XX2 + 1" | bc`
    echo "HOLE 0.5 ($XX1 $Y);" >> script.scr
    echo "HOLE 0.5 ($XX2 $Y);" >> script.scr
    echo "HOLE 0.5 ($XX3 $Y);" >> script.scr
  done  
}

# mill_vert x y1 y2 bites
function mill_vert()
{
  echo "# Vertical Mill" >> script.scr
  BITES=$4
  X=$1
  NY1=$2
  NY2=$3
  Y1=`echo $NY1 - 2 | bc`
  Y2=`echo $NY2 + 2 | bc`
  echo "LAYER Milling;" >> script.scr
  for i in `seq 0 $BITES`;
  do
    YY1=`echo "($Y1 + ($Y2 - $Y1)*$i/($BITES + 1))+2" | bc`
    YY2=`echo "($Y1 + ($Y2 - $Y1)*($i + 1)/($BITES + 1))-2" | bc`
    echo "WIRE 0.8 ($X $YY1) ($X $YY2);" >> script.scr
  done  
  for i in `seq 1 $BITES`;
  do
    YY2=`echo "$Y1 + ((($Y2 - $Y1)*$i))/($BITES + 1)" | bc`
    YY1=`echo "$YY2 - 1" | bc`
    YY3=`echo "$YY2 + 1" | bc`
    echo "HOLE 0.5 ($X $YY1);" >> script.scr
    echo "HOLE 0.5 ($X $YY2);" >> script.scr
    echo "HOLE 0.5 ($X $YY3);" >> script.scr
  done  
}


board bluetooth_header.brd 0 0 0 # 1
board esp8266_esp12_header.brd 0 0 19 # 2
board microsd_header.brd 0 0 38.1 # 3
board prototype.brd 0 0 56.7 # 4
board rfm69_rfm12b_header.brd 0 46.5 57.8 # 4R : right of 4
board arduino.brd 270 46.5 57 # arduino
#board prototype.brd 0 52.5 79.5
#board pins.brd 0 52.5 79.5


mill_vert 40.5 18.5 37.7 2 # 2
mill_vert 39.7 37.7 56.3 2 # 3
mill_vert 99.3 57.4 76.6 0 # 4R
mill_horiz 0 18.5 46 2     # above 1
mill_horiz 0 37.7 46 2   # above 2
mill_horiz 0 56.3 46 2   # above 3
mill_horiz 0 77.6 46 2   # above 4
mill_horiz 46 76.6 100 2   # above 4R
mill_horiz 46 57.4 100 2   # above arduino
mill_vert 46 0 77.6 8   # between 1-4 and arduino

# Arduino mill bottom left edge
mill 46 2 48.9 2
mill 48.9 2 50.9 0
# Arduino mill bottom left edge
mill 85.2 0 87.2 2
mill 87.2 2 98.7 2
mill 98.7 2 100 3.3

#mill_vert 52 81.6 100 1
#mill_horiz 0 81.6 52 3



#cat script.scr

rm -f panel.brd
$EAGLE -Sscript.scr panel.brd
