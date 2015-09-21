#!/bin/bash
# Uses Eagle CAD to render .brd files out to thumbnails

cd `dirname $0`/../eagle
EAGLE=/opt/eagle-6.5.0/bin/eagle

rm -f script.scr foo.brd

for f in *.brd; do
  BRDFILE=`pwd`/$f
  IMGFILE=`pwd`/`basename $f .brd`.png
  echo Thumbnail $f
  echo -----------------------
#  echo EDIT $f >> script.scr
  echo "DISPLAY ALL;" >> script.scr
  echo "GROUP ALL;" >> script.scr
  echo "DELETE SIGNALS;DELETE (c > 0 0);" >> script.scr
  echo "PASTE R0 $BRDFILE (0 0);" >> script.scr
  echo "DISPLAY ALL;" >> script.scr
  echo "RATSNEST;" >> script.scr  
  echo "EXPORT IMAGE $IMGFILE 600;" >> script.scr
done

echo CLOSE >> script.scr
echo QUIT >> script.scr

rm -f *.png
#cat script.scr
$EAGLE -Sscript.scr foo.brd
rm script.scr

for f in *.brd; do  
  IMGFILE=`pwd`/`basename $f .brd`.png
  echo Resizing $IMGFILE
  mogrify -resize 15% -negate $IMGFILE
done

