CUBE_X = 80;
CUBE_Y = 40;
CUBE_Z = 10;

CYLINDER_D = 4;
CYLINDER_H = 1;

SPHERE_D = 4;
SPHERE_H = 4;


difference(){
  minkowski(){
 cube([CUBE_X,CUBE_Y,10],center=true);
 cylinder(d=CYLINDER_D,h=CYLINDER_H, $fn = 20);
 sphere(d = SPHERE_D, h = SPHERE_H, center = true);
 
}  
   translate([0,0,5]) 
    cube([88,48,10],center=true);
   cylinder(d = 4, h= 14, center= true);

    translate([35,0,0])
    cylinder(d = 4, h= 14, center= true);
    
translate([-35,0,0])
    cylinder(d = 4, h= 14, center= true);
translate([25,0,-5])
cube([12,30,40],center=true);
translate([-25,0,-5])
cube([12,30,40],center = true);
translate([25,15+2.5,0])
cylinder(d=2,h=15,center = true);
translate([25,-15-2.5,0])
cylinder(d=2,h=15,center = true);
translate([-25,15+2.5,0])
cylinder(d=2,h=15,center = true);
translate([-25,-15-2.5,0])
cylinder(d=2,h=15,center = true);
}






