LARGO_BRAZO = 100;
ANCHO_BRAZO = 10;
ALTO_BRAZO = 6;

DIAMETRO_CILINDRO_BRAZO = 10;



motor();
base();
module motor(){
    rotate([0,90,90])
    cube([FLAGS_MOTOR_X,FLAGS_MOTOR_Y,FLAGS_MOTOR_Z], center = true);
}


//Brazo 1
difference(){
    
    union(){
translate([0,-ANCHO_BRAZO,ALTO_BRAZO*2])
cube([LARGO_BRAZO,ANCHO_BRAZO,ALTO_BRAZO]);
       
translate([0,-ANCHO_BRAZO/2,ALTO_BRAZO*2])
cylinder(h=ALTO_BRAZO, d = DIAMETRO_CILINDRO_BRAZO, $fn = 100);
        
translate([LARGO_BRAZO,-ANCHO_BRAZO/2,ALTO_BRAZO*2])
cylinder(h=ALTO_BRAZO, d = DIAMETRO_CILINDRO_BRAZO, $fn = 100);
}
    
       
translate([0,-ANCHO_BRAZO/2,ALTO_BRAZO*2])
cylinder(h=DIAMETRO_CILINDRO_BRAZO+2, d = DIAMETRO_CILINDRO_BRAZO/2, $fn = 100);
translate([LARGO_BRAZO,-ANCHO_BRAZO/2,ALTO_BRAZO*2])
cylinder(h=DIAMETRO_CILINDRO_BRAZO*2, d = DIAMETRO_CILINDRO_BRAZO/2, $fn = 100);


}