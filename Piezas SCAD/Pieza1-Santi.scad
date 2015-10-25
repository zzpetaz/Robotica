BASE_X =2;
BASE_Y =40;
BASE_Z =80;

LATERAL1_X =2;
LATERAL1_Y =10;
LATERAL1_Z =30;

SUELO1_X =2;
SUELO1_Y =40;
SUELO1_Z =10;

FRONTAL1_X=2;
FRONTAL1_Y=40;
FRONTAL1_Z=7;

FRONTAL2_X=2;
FRONTAL2_Y=30;
FRONTAL2_Z=20;

LATERAL2_X =10;
LATERAL2_Y =2;
LATERAL2_Z =20;

DIF1_X=2;
DIF1_Y=30;
DIF1_Z=20;

DIF2_X=15;
DIF2_Y=30;
DIF2_Z=25;

union(){
    cube([BASE_X,BASE_Y,BASE_Z], center = true);
    piezaDelantera();
    piezaTrasera();
}

module piezaDelantera(){
    union(){
        rotate([0,0,90])
        translate([BASE_Y/2+BASE_X/2,LATERAL1_Y/2-BASE_X/2,-(BASE_Z/2-LATERAL1_Z/2)])
        cube([LATERAL1_X,LATERAL1_Y,LATERAL1_Z], center = true);
    }
    
    union(){
        rotate([0,0,90])
        translate([-(BASE_Y/2+BASE_X/2),LATERAL1_Y/2-BASE_X/2,-(BASE_Z/2-LATERAL1_Z/2)])
        cube([LATERAL1_X,LATERAL1_Y,LATERAL1_Z], center = true);
    }
    
    union(){
        rotate([0,90,0])
        translate([BASE_Z/2-BASE_X/2,0,-(LATERAL1_Y/2 - BASE_X/2)])
        cube([SUELO1_X,SUELO1_Y,SUELO1_Z], center = true);
    }
    
    union(){
        translate([(-LATERAL1_Y + FRONTAL1_X),0,-(BASE_Z/2-FRONTAL1_Z/2)])
        cube([FRONTAL1_X,FRONTAL1_Y,FRONTAL1_Z], center = true);
    }
}

module piezaTrasera(){
    
    union(){
        translate([BASE_X,0,-BASE_Z/8])
        cube([FRONTAL2_X,FRONTAL2_Y,FRONTAL2_Z], center = true);
    }
    
    difference(){
        union(){
            difference(){
                union(){
                    union(){
                        translate([FRONTAL2_X+BASE_X+LATERAL2_Y/2,FRONTAL2_Y/2-LATERAL2_Y/2,-BASE_Z/8])
                        cube([LATERAL2_X,LATERAL2_Y,LATERAL2_Z], center = true);
                    }
        
                    union(){
                        translate([FRONTAL2_X+BASE_X+LATERAL2_Y/2,-(FRONTAL2_Y/2-LATERAL2_Y/2),-BASE_Z/8])
                        cube([LATERAL2_X,LATERAL2_Y,LATERAL2_Z], center = true);
                    }
                }
        
                union(){
                    translate([BASE_X+LATERAL2_X+1,0,-(BASE_Z/8+LATERAL2_X-DIF1_X/2-BASE_X/2)])
                    rotate([0,70,0])
                    cube([DIF1_X+1,DIF1_Y+2,DIF1_Z], center = true);
                }
            }    
    
            union(){
                translate([BASE_X+LATERAL2_X,0,-(BASE_Z/8+LATERAL2_X-DIF1_X/2-3.3)])
                rotate([0,70,0])
                cube([DIF1_X,DIF1_Y,DIF1_Z], center = true);
            }
        }
    
        union(){
            translate([LATERAL2_Y*8,0,-LATERAL2_Z/2+BASE_X*2])
            rotate([0,-10,0])
            cube([DIF2_X,DIF2_Y+2,DIF2_Z], center = true);
        }
    }
}