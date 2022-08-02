use <hexagonalprism.scad>

bolt();

translate([30,0,0]) nut();

module kingpin(){
    bolt(d=12.7,l=75);
}

module bolt(d=12.7,l=62){
    rad = d/2;
    len = l;
    color("gray") hex_prism(2*rad,rad*1.4);
    color("silver") cylinder(r=rad,h=len);
}

module nut(d=12.7){
    rad = d/2;
    color("gray") difference(){
        hex_prism(2*rad,rad*1.4);
        color("silver") cylinder(r=rad,rad*1.4+2);
    }
}