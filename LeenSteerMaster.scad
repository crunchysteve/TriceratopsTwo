use <./parts/wheelERTRO406-50.scad>
use <./parts/x-member.scad>
use <./parts/bolts.scad>
use <./parts/tiltBrkt.scad>
use <./parts/frntBrkt.scad>
use <./parts/tierod.scad>
use <./parts/mainMember.scad>
use <./parts/seat.scad>

crossMember();
translate([-25,226,-22.5]) tiltBrkt();
mirror([0,1,0]) translate([-25,226,-22.5]) tiltBrkt();
color("lightblue") translate([72,0,72]) mainFrame();
translate([43.5,0,-37.4]) rotate([0,-12,0]) frntBrkt();
tierod();
mirror([0,1,0]) tierod();

color("lightblue"){
    translate([-11,0,-16]) back();
    translate([-16,0,-16]) headRest();
}

translate([-40.5,0,79]) seat2();

color("lightblue"){
    translate([-480,0,30]) 
            rotate([0,9,0]) import("./parts/RearTri.stl");
    translate([-545,49.5,197]) rotate([0,-27,0]) scale([0.66,1,1]) 
            rotate([90,0,0]) cylinder(r=16,h=95);
}

color("silver"){
    translate([-35,-240,-8.5]) rotate([0,90,0]) kingpin();
    translate([25,-240,-8.5]) rotate([0,90,0]) nut(12);
    translate([-35,240,-8.5]) rotate([0,90,0]) kingpin();
    translate([25,240,-8.5]) rotate([0,90,0]) nut(12);
}

//  wheels
    translate([0,-356,96.5]) rotate([90,0,0]) nut(12);
    translate([0,-306,-149.5]) wheel();
    translate([-900,0,-149.5]) scale([1,1.35,1]) wheel();
    translate([0,306,-149.5]) mirror([0,1,0]) wheel();
    translate([0,356,96.5]) rotate([90,0,0]) nut(12);

/*
    MainFrame Parts
    main horizontal  600mm x 35 x 1.6 SHS
    Front horizontal 550mm x 35 x 1.6  "
    seat back        500mm x 35 x 1.6  "
    seat head        200mm x 35 x 1.6  "
    Cross Member     500mm x 35 x 1.6  "
    front bracket    500mm x 30 x 1.6  "
*/