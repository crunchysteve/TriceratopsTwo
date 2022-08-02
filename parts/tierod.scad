tierod();

module tierod(){
    translate([12.5,-17.5,83.5]) rotate([3,0,0]) flexCple();
    translate([10,-235,74.5]) rotate([3,0,0]) 
            rotate([0,90,0]) mirror([0,1,0]) flexCple();
    color("lightblue") translate([12.5,-45,85.7]) 
            rotate([93.4,0,0]) cylinder(r=5,h=164);
}

module flexCple() color("silver") difference(){
    union(){
        cylinder(r=11,h=6);
        translate([0,0,3]) rotate([90,0,0]) cylinder(r=3,h=40);
    }
    translate([0,0,-1]) cylinder(r=3,h=8);
}
