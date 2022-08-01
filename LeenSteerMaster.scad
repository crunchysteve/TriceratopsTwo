use <./wheelERTRO406-50.scad>
use <./hexagonalprism.scad>

//  groundplane
color("lightgray") 
        translate([-300,0,-160]) cube([2000,900,5],center=true);
color("red") translate([-900,450,-160]) 
        rotate([90,0,0]) cylinder(r=5,h=900);
color("red") translate([0,450,-160]) 
        rotate([90,0,0]) cylinder(r=5,h=900);
color("red") translate([-1300,0,-160]) 
        rotate([0,90,0]) cylinder(r=5,h=2000);
color("red") translate([-1300,-310,-160]) 
        rotate([0,90,0]) cylinder(r=5,h=2000);
color("red") translate([-1300,310,-160]) 
        rotate([0,90,0]) cylinder(r=5,h=2000);

color("lightblue"){
    translate([-486,0,66]) 
            rotate([0,4.3,0]) import("../RearTri.stl");
    translate([-564,49.5,228]) rotate([0,-30,0]) scale([0.66,1,1]) 
            rotate([90,0,0]) cylinder(r=16,h=95);
}

color("darkslategray"){
    translate([0,-310,-156.5]) scale([1,100/135,1]) wheel();
    translate([-900,0,-156.5]) wheel();
    translate([0,310,-156.5]) 
            mirror([0,1,0]) scale([1,100/135,1]) wheel();
}

crossmember();
translate([-25,222,-17.5]) tiltBrkt();
mirror([0,1,0]) translate([-25,222,-17.5]) tiltBrkt();
mainSpar();
seatBack();
translate([100,0,65]) frntBrkt();
tierod();
mirror([0,1,0]) tierod();

module tierod(){
    translate([12.5,-17.5,83.5]) rotate([3,0,0]) flexCple();
    translate([10,-231,75.5]) rotate([3,0,0]) 
            rotate([0,90,0]) mirror([0,1,0]) flexCple();
    color("lightblue") translate([12.5,-43,85.7]) 
            rotate([93,0,0]) cylinder(r=5,h=164);
}

module flexCple() color("silver") difference(){
    union(){
        cylinder(r=11,h=6);
        translate([0,0,3]) rotate([90,0,0]) cylinder(r=3,h=40);
    }
    translate([0,0,-1]) cylinder(r=3,h=8);
}

module frntBrkt() color("silver"){
    translate([625,34,60]) rotate([90,0,0]) difference(){
        cylinder(r=20,h=68);
        translate([0,0,-1]) cylinder(r=17,h=70);
    }

    translate([450,0,60]) difference(){
        cube([375,30,30],center=true);
        cube([377,26.8,26.8],center=true);
        translate([175,35,0]) rotate([90,0,0]) cylinder(r=20,h=70);
    }
}

module seatBack() color("lightblue"){
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
}

module mainSpar(){
    color("lightblue"){
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
        translate([450,0,142.5]) difference(){
            hex_prism(10,6);
            translate([0,0,-1]) cylinder(r=3,h=8);
        }
        translate([500,0,142.5]) difference(){
            hex_prism(10,6);
        translate([0,0,-1]) cylinder(r=3,h=8);
        }
    }
}

module tiltBrkt()color("lightgray") color("lightblue"){
    difference(){
        cube([50,30,138]);
        translate([5,-5,-5]) cube([40,30,138]);
        translate([5,-24,0]) cube([40,30,139]);
        //translate([25,-7,0]) 
          //      rotate([45,0,0]) cube([52,18,18],center=true);
        translate([25,-7,138]) 
                rotate([45,0,0]) cube([52,18,18],center=true);
        translate([-1,9,9]) rotate([0,90,0]) cylinder(r=4.25,h=52);
        translate([-1,9,92]) rotate([0,90,0]) cylinder(r=3.25,h=52);
        translate([25,31,114]) rotate([90,0,0]) cylinder(r=6.25,h=32);
    }
    translate([25,14,114]) rotate([-90,0,0]) axle();
}

module axle(){
    hex_prism(20,11);
    cylinder(r=6,h=141);
}

module crossmember() color("lightblue"){
    difference(){
        cube([35,480,35],center=true);
        cube([31.8,482,31.8],center=true);
        translate([0,-223,17.5]) rotate([45,0,0]) 
                cube([37,32/sqrt(2),32/sqrt(2)],center=true);
        translate([0,-234.3,12.8]) 
                cube([37,32/sqrt(2),32/sqrt(2)],center=true);
        translate([0,-220,-18]) cylinder(r=2,h=36);
        translate([-18,-231,-8.5]) 
                rotate([0,90,0]) cylinder(r=4.25,h=36);
        rotate([0,45,0]) cylinder(r=16,h=30);
        translate([0,223,17.5]) rotate([45,0,0]) 
                cube([37,32/sqrt(2),32/sqrt(2)],center=true);
        translate([0,234.3,12.8]) 
                cube([37,32/sqrt(2),32/sqrt(2)],center=true);
        translate([0,220,-18]) cylinder(r=2,h=36);
        translate([-18,231,-8.5]) 
                rotate([0,90,0]) cylinder(r=4.25,h=36);
    }
    difference(){
        union(){
            translate([0,-232,-8.4]) cube([31.8,15,15],center=true);
            translate([0,232,-8.4]) cube([31.8,15,15],center=true);
        }
        translate([0,-232,-8.4]) cube([32,11.4,11.4],center=true);
        translate([0,232,-8.4]) cube([32,11.4,11.4],center=true);
    }
    difference(){
        union(){
            rotate([0,45,0]) cylinder(r=16,h=26);
            rotate([0,45,0]) cylinder(r=14.8,h=29);
            rotate([0,45,0]) cylinder(r=14.3,h=180);
        }
        rotate([0,45,0]) translate([0,0,-1]) cylinder(r=12.3,h=182);
    }
    translate([-17.5,-180,0]) rotate([0,-90,0]) difference(){
        cylinder(r=14.3,h=40);
        translate([0,0,-1]) cylinder(r=12.3,h=42);
    }
    translate([-17.5,180,0]) rotate([0,-90,0]) difference(){
        cylinder(r=14.3,h=40);
        translate([0,0,-1]) cylinder(r=12.3,h=42);
    }
}
