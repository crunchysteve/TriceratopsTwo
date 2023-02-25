difference(){
    union(){
        translate([-75,0,0]) cube([150,10,35]);
        translate([-22,0,0]) cube([44,64,100]);
    }
    translate([0,0,35]) rotate([-45,0,0]) 
            translate([-23,-64,0]) cube([46,64,100]);
    translate([0,0,35]) rotate([-45,0,0]) 
            translate([0,0,-30]) cylinder(r=20,h=60);
    translate([0,0,35]) rotate([-45,0,0]) 
            translate([0,0,-25]) cylinder(r=14.5,h=120);
    translate([0,0,-1]) cylinder(r=1,h=20);
    translate([0,0,14.5]) rotate([-45,0,0]) cylinder(r=1,h=150);
    translate([-25,20,25]) rotate([-45,0,0]) cube([50,50,100]);
}
