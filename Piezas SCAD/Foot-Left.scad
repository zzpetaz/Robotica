//Medidas de la base de la pieza original:
xBase = 52;
yBase = 60;
//La coordenada Z la separamos en el valor recto(altura cilindro) y el valor de la curva(radio esfera)
hCilindro = 3.5;
rEsfera = 3;
zBase = hCilindro + rEsfera;

//Medidas del saliente mayor de la base
xCubMay = 5;
yCubMay = 10;
zCubMay = 11;

//Medidas del saliente menor de la base
xCubMen = 5;
yCubMen = xCubMen;
zCubMen = zCubMay;

fn = 20;

hull(){

    translate([-3/4*xBase,-yBase/2,0])union () {
        translate([0,0,hCilindro])
        sphere(r=rEsfera, $fn=fn);
        cylinder (r=rEsfera, h=hCilindro, $fn=fn);
   }
   translate([xBase/4,yBase/2,0])union () {
        translate([0,0,hCilindro])
        sphere(r=rEsfera, $fn=fn);
        cylinder (r=rEsfera, h=hCilindro, $fn=fn);
   }
   translate([xBase/4,-yBase/2,0])union () {
        translate([0,0,hCilindro])
        sphere(r=rEsfera, $fn=fn);
        cylinder (r=rEsfera, h=hCilindro, $fn=fn);
   }
   translate([-3/4*xBase,yBase/2,0])union () {
        translate([0,0,hCilindro])
        sphere(r=rEsfera, $fn=fn);
        cylinder (r=rEsfera, h=hCilindro, $fn=fn);
   }
}


translate ([-21,-7.5,zBase-2])
cube([xCubMay,yCubMay,zCubMay+2]);

translate ([9,-2.5,zBase-2])
cube([xCubMen,yCubMen,zCubMen+2]);