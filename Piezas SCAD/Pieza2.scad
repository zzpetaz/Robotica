BASE_X=2;
BASE_Y=7;
BASE_Z=10;

CILINDRO_H=10;
CILINDRO_R=0.7;


difference(){
    union(){
        translate([0,BASE_Y/2,0])
        unaMitad();

        rotate([0,180,180])
        translate([0,BASE_Y/2,0])
        unaMitad();
    }
    
    difecencia();
}




module unaMitad(){
    cube([BASE_X,BASE_Y,BASE_Z], center = true);

    translate([-(BASE_Y/2-BASE_X/2),BASE_Y/2+BASE_X/2,0])
    rotate([0,0,90])
    cube([BASE_X,BASE_Y,BASE_Z], center = true);

    translate([-(BASE_Y-BASE_X),BASE_Y+BASE_X,0])
    cube([BASE_X,BASE_Y,BASE_Z], center = true);

    translate([-(BASE_Y/2-BASE_X/2),BASE_Y*2-BASE_X/2,0])
    rotate([0,0,90])
    cube([BASE_X,BASE_Y,BASE_Z], center = true);

    translate([0,BASE_Y*2+BASE_X-0.3,0])
    cube([BASE_X,BASE_Y/2,BASE_Z], center = true);
}

module difecencia(){
    cilindro();

    translate([0,BASE_Y*2.7,0])
    cilindro();

    translate([0,-BASE_Y*2.7,0])
    cilindro();
}

module cilindro(){
    rotate([0,90,0])
    cylinder(h = CILINDRO_H, r=CILINDRO_R, $fn=50, center = true);
}
