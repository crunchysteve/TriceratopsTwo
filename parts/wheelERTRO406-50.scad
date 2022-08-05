//wheelOld();
wheel();

module wheel() translate([0,0,246]) rotate([90,0,0]){
    color("red") translate([0,0,-125]) cylinder(r=1,h=250);
    color("darkslategray") rotate_extrude() 
            translate([224,0]) circle(23);
    color("silver") translate([0,0,-20]) rotate_extrude() 
            translate([189,10]) square([20,20]);
    color("blue") translate([0,0,-50]) cylinder(r=8,h=100);
    color("black") translate([0,0,-60]) cylinder(r=4.5,h=120);
    color("silver") translate([0,0,-40]) cylinder(r=20,h=80);
    color("silver") translate([0,0,-38]) cylinder(r=33,h=3);
    color("silver") translate([0,0,35]) cylinder(r=33,h=3);
    for(a = [0:22.5:337.5]) rotate([0,0,a]){
        color("silver") translate([0,33,35]) 
                rotate([-103,0,0]) cylinder(r=1.5,h=160);
    }
    rotate([0,0,11.25]) mirror([0,0,1]){
        for(a = [0:22.5:337.5]) rotate([0,0,a]){
            color("silver") translate([0,33,35]) 
                    rotate([-103,0,0]) cylinder(r=1.5,h=160);
        }
    }
}

module wheelOld() rotate([90,0,0]) translate([0,253]){
    rotate_extrude() translate([228,0,0]) circle(27.5);
    //translate([0,0,-10]) cylinder(r=225,h=20);
    translate([0,0,-61]) cylinder(r=30,h=115);
    translate([0,0,-71]) cylinder(r=12,h=135);
    color("black") translate([0,0,-81]) cylinder(r=6,h=162);
}