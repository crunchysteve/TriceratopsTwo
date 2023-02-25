rearTriangle();

module rearTriangle() color("gray"){
lwrBrckt();
translate([0,2.5,0]){
    translate([-80,0,160]) 
            rotate([0,-27.5,0]) scale([0.9,1,1]) chainstay();
    chainstay();
    mirror([0,1,0]) chainstay();
    mirror([0,1,0]) translate([-80,0,160]) 
            rotate([0,-27.5,0]) scale([0.9,1,1]) chainstay();
    translate([0,2.5,0]) dropout();
    mirror([0,1,0]) translate([0,2.5,0]) dropout();
}
upright();

/*
color("red") translate([0,65,0]) 
        rotate([0,-90,0]) cylinder(r=2,h=500);
color("red") translate([0,-65,0]) 
        rotate([0,-90,0]) cylinder(r=2,h=500);


translate([-415,0,0]) rotate([0,-24.68,0]){
    translate([0,70,0]) rotate([90,0,0]) cylinder(r=4.5,h=140);
    rotate([0,90,0]) cylinder(r=3,h=393);
    translate([377,13,0]) rotate([90,0,0]) cylinder(r=3,h=26);
    translate([393,13,0]) rotate([90,0,0]) cylinder(r=3,h=26);
}
*/
rotate([0,-109.4,0]){
    translate([0,70,0]) rotate([90,0,0]) cylinder(r=4.5,h=140);
    rotate([0,90,0]) cylinder(r=3,h=174);
    translate([174,16,0]) rotate([90,0,0]) cylinder(r=3,h=32 );
}
}

module upright() rotate([0,-30,0]) difference(){
    linear_extrude(height=195) difference(){
        circle(16);
        circle(14.4);
    }
    translate([0,25,0]) rotate([90,0,0]) cylinder(r=20,h=50);
}


module dropout() translate([-415,71,0]) rotate([90,0,0]){
    linear_extrude(height=6) difference(){
        hull(){
            circle(13);
            translate([25,-0,0]) circle(8);
        }
        hull(){
            circle(5);
            translate([0,-14,0]) circle(5);
        }
    }
}

module chainstay() translate([0,33,0]) difference(){
    rotate([0,0,-5]) rotate([0,-90,0]) union(){
        linear_extrude(height=386,scale=[7.5/16,12/16]) difference(){
            scale([1,11.5/16]) circle(16);
            scale([1,8.9/14.4]) circle(14.4);
        }
        translate([0,0,386]) sphere(7.5);
    }
    translate([0,25,0]) rotate([90,0,0]) cylinder(r=20,h=50);
}

module lwrBrckt() difference(){
    translate([0,46,0]) rotate([90,0,0]) cylinder(r=20,h=73);
    translate([0,46,0]) rotate([90,0,0]) cylinder(r=13,h=73);
    rotate([0,130,0]) translate([-20,-16,0]) cube([40,51,20]);
    translate([0,-18,0]) rotate([90,0,0]) cylinder(r=16,h=11);
    translate([0,48,0]) rotate([90,0,0]) cylinder(r=16,h=11);
    translate([0,35,0]) rotate([90,0,0]) cylinder(r=16,h=51);
}