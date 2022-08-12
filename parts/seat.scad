seat();

seat2();

module seat(){
    
}

module seat2() color("sienna"){
    //translate([-26,-20,0]) cube([19,40,50]);
    difference(){
        translate([-240,-125,0]) rotate([0,-12,0]) cube([240,250,10]);
        translate([0,90,-1]) rotate([0,0,45]) cube([50,50,12]);
        translate([0,-160,-1]) rotate([0,0,45]) cube([50,50,12]);
        translate([-252,-126,0]) rotate([0,27.5,0]) cube([10,252,20]);
        rotate([0,-12,0]){
            translate([-65,-65,-1]) cylinder(r=20,h=100);
            translate([-65,65,-1]) cylinder(r=20,h=100);
            translate([-165,-65,-1]) cylinder(r=20,h=100);
            translate([-165,65,-1]) cylinder(r=20,h=100);
        }
    }
    
    translate([-240.8,0,0]) rotate([0,27.5,0]) difference(){
        translate([-150,-125,0]) cube([150,250,10]);
        translate([-161,-126,0]) rotate([0,30,0]) cube([10,252,20]);
        translate([-75,-65,-1]) cylinder(r=20,h=12);
        translate([-75,65,-1]) cylinder(r=20,h=12);
    }
    
    translate([-373.2,0,69]) rotate([0,45,0]) difference(){
        linear_extrude(height=10){
            polygon([[0,-125],[0,125],[-340,100],[-340,-100]]);
        }
        translate([-352,-126,0]) rotate([0,45,0]) cube([10,252,30]);
        translate([-65,-65,-1]) cylinder(r=20,h=12);
        translate([-65,65,-1]) cylinder(r=20,h=12);
        translate([-170,-57,-1]) cylinder(r=20,h=12);
        translate([-170,57.5,-1]) cylinder(r=20,h=12);
        translate([-275,-50,-1]) cylinder(r=20,h=12);
        translate([-275,50,-1]) cylinder(r=20,h=12);
    }
    
    translate([-612,0,308]) rotate([0,90,0]) difference(){
        linear_extrude(height=10){
            polygon([[0,-100],[0,100],[-175,70],[-175,-70]]);
        }
        translate([-352,-126,0]) rotate([0,45,0]) cube([10,252,30]);
        translate([-65,-45,-1]) cylinder(r=20,h=12);
        translate([-130,0,-1]) cylinder(r=20,h=12);
        translate([-65,45,-1]) cylinder(r=20,h=12);
    }
}