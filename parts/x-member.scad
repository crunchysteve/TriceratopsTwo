use <./bolts.scad>

crossMember();
translate([-34,-240,-8.5]) rotate([0,90,0]) kingpin();

module crossMember() color("lightblue"){
    xMemShell();
    translate([0,-240,-8.5]) kingBush();
    translate([0,240,-8.5]) kingBush();
    translate([-19.5,240.4,-0.3]) endcover();
    translate([-19.5,-240.4,-0.3]) mirror([0,1,0]) endcover();
    steerer();
}

module steerer() rotate([0,45,0]) difference(){
    union(){
        cylinder(r=16,h=20*sqrt(2));
        cylinder(r=14.8,h=20*sqrt(2)+3);
        cylinder(r=14.3,h=190);
    }
    translate([0,0,-1]) cylinder(r=12.7,h=192);
}

module endcover() rotate([45,0,0,]) cube([39,1.6,24]);

module kingBush(){
    translate([-18.5,0,0]) rotate([0,90,0]) difference(){
        cylinder(r=8,h=37);
        translate([0,0,-1]) cylinder(r=6.8,h=39);
    }
}

module xMemShell() difference(){
    cube([35,480,35],center=true);
    cube([31.8,482,31.8],center=true);
    rotate([0,45,0]) cylinder(r=16,h=42);
    translate([-21,240,0]) rotate([45,0,0]) cube(42);
    translate([-21,240,-8.5]) rotate([0,90,0]) cylinder(r=8,h=42);
    translate([0,236,-18.5]) cylinder(r=2,h=4);
    mirror([0,1,0]){
        translate([-21,240,0]) rotate([45,0,0]) cube(42);
        translate([-21,240,-8.5]) rotate([0,90,0]) cylinder(r=8,h=42);
        translate([0,236,-18.5]) cylinder(r=2,h=4);
    }
}