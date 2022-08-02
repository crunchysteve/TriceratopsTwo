use <./bolts.scad>

mainFrame();

module mainFrame() color("lightblue"){
    difference(){
        translate([-160,0,60]) difference(){
            cube([650,35,35],center=true);
            cube([972,31.8,31.8],center=true);
        }
        translate([198,0,40]) 
                rotate([0,-45,0]) cube(100,center=true);
        rotate([0,45,0]) 
                translate([0,0,25]) cylinder(r=19,h=100);
    }
    difference(){
        rotate([0,45,0]) 
                translate([0,0,35]) cylinder(r=19,h=100);
        rotate([0,45,0]) 
                translate([0,0,34]) cylinder(r=17.4,h=102);
    }
    translate([162,0,50]) rotate([0,45,0]) difference(){
        cube([35,35,225],center=true);
        cube([31.8,31.8,252],center=true);
        translate([20,0,-146]) 
                rotate([0,-45,0]) cube(100,center=true);
    }
    translate([365,0,125]) difference(){
        cube([350,35,35],center=true);
        cube([352,31.8,31.8],center=true);
    }
    translate([450,0,142.5]) nut(8);
    translate([500,0,142.5]) nut(8);

    translate([-498,0,224]) rotate([0,-45,0]) difference(){
        cube([35,35,450],center=true);
        cube([31.8,31.8,452],center=true);
        translate([0,0,-236]) 
                rotate([0,45,0]) cube([100,100,40],center=true);
        translate([0,0,239]) 
                rotate([0,22.5,0]) cube([100,100,40],center=true);
    }

    translate([-652,0,445]) difference(){
        cube([35,35,150],center=true);
        cube([31.8,31.8,452],center=true);
        translate([0,0,-89]) 
                rotate([0,-22.5,0]) cube([100,100,40],center=true);
    }

    translate([-279,-17.5,46.5]) difference(){
        rotate([0,-62.5,0]) cube([35,35,150]);
        translate([-60,-1,0]) cube([100,37,31]);
        translate([-47,-1,30]) rotate([0,-135,0]) cube([120,37,35]);
    }
    
    difference(){
        translate([288,0,62.5]) rotate([0,70,0]) difference(){
            cube([35,35,370],center=true);
            translate([0,0,-1]) cube([31.8,31.8,251],center=true);
        }
        translate([370,0,128.5]) cube([220,42,42],center=true);
        translate([107,0,0]) rotate([0,45,0]) cube([42,42,220],center=true);
    }
}