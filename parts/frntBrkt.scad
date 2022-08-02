frntBrkt();

module frntBrkt() color("silver"){
    translate([675,34,60]) rotate([90,0,0]) difference(){
        cylinder(r=20,h=68);
        translate([0,0,-1]) cylinder(r=17,h=70);
    }

    translate([500,0,60]) difference(){
        cube([375,30,30],center=true);
        cube([377,26.8,26.8],center=true);
        translate([175,35,0]) rotate([90,0,0]) cylinder(r=20,h=70);
    }
}