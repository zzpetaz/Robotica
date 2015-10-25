CARA_X=30;
CARA_Y=2;
CARA_Z=25;

SUELO_X=15;
SUELO_Y=2;
SUELO_Z=10;


translate([-CARA_X/4,0,0])
cube([CARA_X/2,CARA_Y,CARA_Z], center = true);

rotate([0,0,90])
translate([CARA_X*1.5/2-CARA_Y/2,CARA_X/2+CARA_Y/2,0])
cube([CARA_X*1.5,CARA_Y,CARA_Z], center = true);

translate([-(CARA_X/4 + SUELO_X + SUELO_Y),CARA_X*1.5-SUELO_Z/2-SUELO_Y/2,-(CARA_Z/2-SUELO_Y)])
rotate([90,0,0])
cube([SUELO_X,SUELO_Y+2,SUELO_Z], center = true);

translate([CARA_X/4,0,0])
cube([CARA_X/2,CARA_Y,CARA_Z], center = true);

rotate([0,0,90])
translate([CARA_X*1.5/2-CARA_Y/2,-(CARA_X/2+CARA_Y/2),0])
cube([CARA_X*1.5,CARA_Y,CARA_Z], center = true);

translate([(CARA_X/4 + SUELO_X + SUELO_Y),CARA_X*1.5-SUELO_Z/2-SUELO_Y/2,-(CARA_Z/2-SUELO_Y)])
rotate([90,0,0])
cube([SUELO_X,SUELO_Y+2,SUELO_Z], center = true);