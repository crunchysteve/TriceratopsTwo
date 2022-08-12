use <./bolts.scad>

tiltBrkt();

module tiltBrkt() color("lightgray"){
    difference(){
        cube([50,30,148]);
        translate([5,-5,-5]) cube([40,30,148]);
        translate([5,-24,0]) cube([40,30,149]);
        translate([25,-7,0]) 
                rotate([45,0,0]) cube([52,18,18],center=true);
        translate([25,-4.5,148]) 
                rotate([45,0,0]) cube([52,18,18],center=true);
        translate([-1,14,15]) rotate([0,90,0]) cylinder(r=7.75,h=52);
        translate([-1,9,97]) rotate([0,90,0]) cylinder(r=4.25,h=52);
        translate([25,31,119]) rotate([90,0,0]) cylinder(r=6.5,h=32);
    }
    translate([25,14,119]) rotate([-90,0,0]) bolt(d=12,l=140);
}