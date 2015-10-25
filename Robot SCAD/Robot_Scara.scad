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

//Medidas del brazo
LARGO_BRAZO = 100;
ANCHO_BRAZO = 10;
ALTO_BRAZO = 10;
//Medidas de los cilindros del brazo
DIAMETRO_CILINDRO_BRAZO = 10;
//Medidas del brazo2
LARGO_BRAZO2 = 100;
ANCHO_BRAZO2 = 10;
ALTO_BRAZO2 = 6;



base();
motor();
//hull(){
union(){
    translate([LARGO_BRAZO2+5.5,-5,46.5]){
    rotate([180,0,90])
    motor();
}
//}
brazo1();
}
brazo2();

module base(){
    difference(){
        cube([BASE_X,BASE_Y,BASE_Z], center = true);
        translate([0,0,5])
        cube([BASE_X-2,BASE_Y-2,BASE_Z+2], center = true);
    }
    
    union(){
        translate([0,MOTOR_Y/2+         FLAGS_MOTOR_Z/2,1.2])
        rotate([0,90,90])
        cube([FLAGS_MOTOR_X*8,FLAGS_MOTOR_Y*2,FLAGS_MOTOR_Z], center = true);
    }
    
    union(){
        translate([0,-(MOTOR_Y/2+         FLAGS_MOTOR_Z/2),1.2])
        rotate([0,90,90])
        cube([FLAGS_MOTOR_X*8,FLAGS_MOTOR_Y*2,FLAGS_MOTOR_Z], center = true);
    }
}

module motor(){
    cube([MOTOR_X,MOTOR_Y,MOTOR_Z*.7], center = true);
    
    translate([0,-(MOTOR_Y/2-MOTOR_X/2),MOTOR_Z/2-2])
    cylinder(h = MOTOR_Z*.2, r=MOTOR_X/2, center = true);
    
    translate([0,-MOTOR_X/2,MOTOR_Z*.7-MOTOR_Z*.1-0.45])
    cylinder(h=MOTOR_Z*.1,d=DIAMETRO_CILINDRO_BRAZO/2, center = true);
    
    translate([0,MOTOR_Y/2+FLAGS_MOTOR_Z/2,MOTOR_Z*.7-16])
    rotate([0,90,90])
    cube([FLAGS_MOTOR_X,FLAGS_MOTOR_Y,FLAGS_MOTOR_Z], center = true);
    
    translate([0,-(MOTOR_Y/2+FLAGS_MOTOR_Z/2),MOTOR_Z*.7-16])
    rotate([0,90,90])
    cube([FLAGS_MOTOR_X,FLAGS_MOTOR_Y,FLAGS_MOTOR_Z], center = true);
}


//Brazo 1
module brazo1(){
difference(){
    union(){
translate([0,-ANCHO_BRAZO,ALTO_BRAZO*2])
cube([LARGO_BRAZO,ANCHO_BRAZO,ALTO_BRAZO]);
       
translate([0,-ANCHO_BRAZO/2,ALTO_BRAZO*2])
cylinder(h=ALTO_BRAZO, d = DIAMETRO_CILINDRO_BRAZO, $fn = 100);
        
translate([LARGO_BRAZO,-ANCHO_BRAZO/2,ALTO_BRAZO*2])
cylinder(h=ALTO_BRAZO, d = DIAMETRO_CILINDRO_BRAZO, $fn = 100);
}
    
       
translate([0,-ANCHO_BRAZO/2,ALTO_BRAZO*2-1])
cylinder(h=DIAMETRO_CILINDRO_BRAZO+2, d = DIAMETRO_CILINDRO_BRAZO/2, $fn = 100);
translate([LARGO_BRAZO,-ANCHO_BRAZO/2,ALTO_BRAZO*2-1])
cylinder(h=DIAMETRO_CILINDRO_BRAZO*2, d = DIAMETRO_CILINDRO_BRAZO/2, $fn = 100);
translate([LARGO_BRAZO-5,-ANCHO_BRAZO*3/2,ALTO_BRAZO*2 +2])
cube([ALTO_BRAZO,ANCHO_BRAZO*2,6]);

}
}

module brazo2(){
translate([LARGO_BRAZO2,0,10])
difference(){
    
  union(){
translate([0,-ANCHO_BRAZO2,ALTO_BRAZO2*2])
cube([LARGO_BRAZO2,ANCHO_BRAZO2,ALTO_BRAZO2]);
       
translate([0,-ANCHO_BRAZO2/2,ALTO_BRAZO2*2])
cylinder(h=ALTO_BRAZO2, d = DIAMETRO_CILINDRO_BRAZO, $fn = 100);
        
translate([LARGO_BRAZO2,-ANCHO_BRAZO2/2,ALTO_BRAZO2*2])
cylinder(h=ALTO_BRAZO2, d = DIAMETRO_CILINDRO_BRAZO, $fn = 100);
      translate([21.5,-10,16])
      rotate([0,0,90])
      cube([10,6,15]);
}
    
       
translate([0,-ANCHO_BRAZO2/2,ALTO_BRAZO2*2])
cylinder(h=DIAMETRO_CILINDRO_BRAZO+2, d = DIAMETRO_CILINDRO_BRAZO/2, $fn = 100);
translate([LARGO_BRAZO2,-ANCHO_BRAZO2/2,ALTO_BRAZO2*2])
cylinder(h=DIAMETRO_CILINDRO_BRAZO*2, d = DIAMETRO_CILINDRO_BRAZO/2, $fn = 100);
}

}
