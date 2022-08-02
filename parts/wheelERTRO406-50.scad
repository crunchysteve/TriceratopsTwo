wheel();

module wheel() rotate([90,0,0]) translate([0,253]){
    rotate_extrude() translate([228,0,0]) circle(27.5);
    //translate([0,0,-10]) cylinder(r=225,h=20);
    translate([0,0,-61]) cylinder(r=30,h=115);
    translate([0,0,-71]) cylinder(r=12,h=135);
    color("black") translate([0,0,-81]) cylinder(r=6,h=162);
}