use <./parts/wheelERTRO406-50.scad>
use <./parts/x-member.scad>
use <./parts/bolts.scad>
use <./parts/tiltBrkt.scad>
use <./parts/frntBrkt.scad>
use <./parts/tierod.scad>
use <./parts/mainFrame.scad>

color("lightblue"){
    translate([-486,0,66]) 
            rotate([0,4.3,0]) import("./parts/RearTri.stl");
    translate([-564,49.5,228]) rotate([0,-30,0]) scale([0.66,1,1]) 
            rotate([90,0,0]) cylinder(r=16,h=95);
}

color("darkslategray"){
    translate([0,-314,-156.5]) scale([1,100/135,1]) wheel();
    translate([-900,0,-156.5]) wheel();
    translate([0,314,-156.5]) 
            mirror([0,1,0]) scale([1,100/135,1]) wheel();
}

color("silver") 
        translate([-35,-240,-8.5]) rotate([0,90,0]) kingpin();
color("silver") 
        translate([25,-240,-8.5]) rotate([0,90,0]) nut();
color("silver") 
        translate([-35,240,-8.5]) rotate([0,90,0]) kingpin();
color("silver") 
        translate([25,240,-8.5]) rotate([0,90,0]) nut();

color("lightblue") crossMember();
translate([-25,226,-22.5]) tiltBrkt();
mirror([0,1,0]) translate([-25,226,-22.5]) tiltBrkt();
mainFrame();
translate([100,0,65]) frntBrkt();
tierod();
mirror([0,1,0]) tierod();