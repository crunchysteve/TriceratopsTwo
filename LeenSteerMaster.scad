use <./parts/wheelERTRO406-50.scad>
use <./parts/x-member.scad>
use <./parts/bolts.scad>
use <./parts/tiltBrkt.scad>
use <./parts/frntBrkt.scad>
use <./parts/tierod.scad>
use <./parts/mainFrame.scad>
use <./parts/seat.scad>

crossMember();
translate([-25,226,-22.5]) tiltBrkt();
mirror([0,1,0]) translate([-25,226,-22.5]) tiltBrkt();
mainFrame();
translate([100,0,65]) frntBrkt();
tierod();
mirror([0,1,0]) tierod();

translate([-22,0,77.5]) seat2();

color("lightblue"){
    translate([-486,0,66]) 
            rotate([0,4.3,0]) import("./parts/RearTri.stl");
    translate([-564,49.5,228]) rotate([0,-30,0]) scale([0.66,1,1]) 
            rotate([90,0,0]) cylinder(r=16,h=95);
}

color("silver"){
    translate([-35,-240,-8.5]) rotate([0,90,0]) kingpin();
    translate([25,-240,-8.5]) rotate([0,90,0]) nut();
    translate([-35,240,-8.5]) rotate([0,90,0]) kingpin();
    translate([25,240,-8.5]) rotate([0,90,0]) nut();
}

//  wheels
    translate([0,-356,96.5]) rotate([90,0,0]) nut(14);
    translate([0,-306,-149.5]) wheel();
    translate([-900,0,-149.5]) scale([1,1.35,1]) wheel();
    translate([0,306,-149.5]) mirror([0,1,0]) wheel();
    translate([0,356,96.5]) rotate([90,0,0]) nut(14);
