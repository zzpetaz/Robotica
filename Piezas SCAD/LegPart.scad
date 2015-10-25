LARGO_PIEZA = 35;
ANCHO_PIEZA = 3;
ALTO_PIEZA = 10;

ALTURA_CILINDRO = 10;
DIAMETRO_CILINDRO_GRANDE = 5;
DIAMETRO_CILINDRO_PEQUENO = 1;

DIAMETRO_BRAZOS_CILINDRO = 10;

//parte trasera con agujeros
difference(){
//Parte trasera
translate([-LARGO_PIEZA,30,0])
cube([LARGO_PIEZA,3,10], left = true);

//agujeros de la parte trasera
rotate([90,90,180])
translate([0-5,LARGO_PIEZA/2,30])
cylinder (h = ALTURA_CILINDRO, d = DIAMETRO_CILINDRO_GRANDE, center = true,$fn = 100);
rotate([90,90,180])
translate([-5,LARGO_PIEZA/2+5/2 + 10/2,30])
cylinder (h = ALTURA_CILINDRO, d = DIAMETRO_CILINDRO_PEQUENO, center = true,$fn = 100);
rotate([90,90,180])
translate([-5,LARGO_PIEZA/2 -15/2,30])
cylinder (h = ALTURA_CILINDRO, d = DIAMETRO_CILINDRO_PEQUENO, center = true, $fn = 100);
}


//Brazo derecho con sus agujeros correspondientes
difference(){
union(){
//Parte derecha
rotate(90)
translate([10,0,0])
cube([20,3,10], left = true);


//parte redondeada del brazo derecho
rotate([0,90,0])
translate([-5,10,-3/2])
cylinder (h = ANCHO_PIEZA, d = DIAMETRO_BRAZOS_CILINDRO, center = true,$fn = 100);
}
    
// agujeros del brazo derecho
rotate([0,90,0])
translate([-5,10,-3/2])
cylinder (h = ALTURA_CILINDRO, d = DIAMETRO_CILINDRO_GRANDE, center = true,$fn = 100);
rotate([0,90,0])
translate([-5,30/2 + 5/2,-3/2])
cylinder (h = ALTURA_CILINDRO, d = DIAMETRO_CILINDRO_PEQUENO, center = true,$fn = 100);
rotate([0,90,0])
translate([-5,40/2 + 5/2,-3/2])
cylinder (h = ALTURA_CILINDRO, d = DIAMETRO_CILINDRO_PEQUENO, center = true,$fn = 100);
}

//brazo izquierdo
union(){
//Parte derecha
rotate(90)
translate([10,LARGO_PIEZA-3,0])
cube([20,3,10], left = true);


//parte redondeada del brazo derecho
rotate([0,90,0])
translate([-5,10,-LARGO_PIEZA+3/2])
cylinder (h = ANCHO_PIEZA, d = DIAMETRO_BRAZOS_CILINDRO, center = true,$fn = 100);
}



rotate([0,90,0])
translate([-5,10,-LARGO_PIEZA+5])
cylinder (h = 5, d = DIAMETRO_CILINDRO_GRANDE, center = true,$fn = 100);
















