difference(){
    cube([35,100,35],center=true);
    cube([33.4,102,33.4],center=true);
    translate([0,-41,-8.5]) cube([37,21,21],center=true);
    translate([-18.5,-50.1,2]) rotate([0,90,0]) linear_extrude(height=37){
        polygon([[0,0],[-17,0],[-17,15.1],[-15,15.1]]);
    }
}

translate([0,-40,-7.5]) difference(){
    cube([35.5,20,20],center=true);
    cube([38,16.4,16.4],center=true);
}

translate([0,-39.6,11.6]) 
        rotate([45,0,0]) cube([35,15,1.6],center=true);

translate([-17.75,-40,-7.5]) rotate([0,90,0]) difference(){
    cylinder(r=8,h=35.5);
    translate([0,0,-1]) cylinder(r=6.35,h=38);
}