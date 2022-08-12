use <../wheelERTRO406-50.scad>

translate([900,0,0]) rotate([0,0,24.2]){
    translate([0,-350,0]) rotate([-5.7,0,0]){
        scale([1,100/135,1]) wheel();
        color("red") translate([0,5000,253]) 
                rotate([90,0,0]) cylinder(r=5,h=10000);
    }
    translate([0,350,0]) rotate([-7.9,0,0]){
        scale([1,100/135,1]) wheel();
        color("blue") translate([0,5000,253]) 
                rotate([90,0,0]) cylinder(r=5,h=10000);
    }
}

rotate([-7.27,0,0]){
    wheel();
    color("white") translate([0,5000,253]) 
            rotate([90,0,0]) cylinder(r=5,h=10000);
}

color("black"){
    translate([10,2000,-200]) cylinder(r=5,h=400);
    translate([-200,2000,0]) rotate([0,90,0]) cylinder(r=5,h=400);
    translate([0,2200,0]) rotate([90,0,0]) cylinder(r=5,h=400);
}