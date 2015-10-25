// Medidas Motor
MOTOR_X=10.8;
MOTOR_Y=22.2;
MOTOR_Z=31;

FLAGS_MOTOR_X= 1;
FLAGS_MOTOR_Y= 10.8;
FLAGS_MOTOR_Z= 5;

LARGO_TOTAL_MOTOR = FLAGS_MOTOR_Z*2 + MOTOR_Y;
//---------------------

// Medidas Base
BASE_X=MOTOR_X*2;
BASE_Y=LARGO_TOTAL_MOTOR+2;
BASE_Z=30;
//---------------------


motor();
base();

module base(){
    difference(){
        cube([BASE_X,BASE_Y,BASE_Z], center = true);
        translate([0,0,5])
        cube([BASE_X-2,BASE_Y-2,BASE_Z+2], center = true);
    }
}


module motor(){
    cube([MOTOR_X,MOTOR_Y,MOTOR_Z*.7], center = true);
    
    translate([0,-(MOTOR_Y/2-MOTOR_X/2),MOTOR_Z/2-2])
    cylinder(h = MOTOR_Z*.2, r=MOTOR_X/2, center = true);
    
    translate([0,-MOTOR_X/2,MOTOR_Z*.7-MOTOR_Z*.1-0.45])
    cylinder(h=MOTOR_Z*.1,r=MOTOR_X/6, center = true);
    
    translate([0,MOTOR_Y/2+FLAGS_MOTOR_Z/2,MOTOR_Z*.7-16])
    rotate([0,90,90])
    cube([FLAGS_MOTOR_X,FLAGS_MOTOR_Y,FLAGS_MOTOR_Z], center = true);
    
    translate([0,-(MOTOR_Y/2+FLAGS_MOTOR_Z/2),MOTOR_Z*.7-16])
    rotate([0,90,90])
    cube([FLAGS_MOTOR_X,FLAGS_MOTOR_Y,FLAGS_MOTOR_Z], center = true);
}
