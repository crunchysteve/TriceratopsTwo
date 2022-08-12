mainFrame();

module mainFrame(){
    rear();
    head();
    front();
}

module head() rotate([0,45,0]) translate([0,0,-60]) difference(){
    cylinder(r=19,120);
    translate([0,0,-1]) cylinder(r=17,122);
}

module rear() translate([-165,17.5,12.5]) rotate([90,0,0]){
        translate([0,35,0]) difference(){
            translate([0,-36,0]) cube([200,35,35]);
        translate([-1,-34.4,1.6]) cube([202,31.8,31.8]);
        rotate([0,0,6]) translate([-40,-40,-1]) cube(40);
        translate([213,1,17.5]) rotate([0,0,-45]) 
                rotate([90,0,0]) cylinder(r=19,h=80);
        translate([164,-36,-1]) rotate([0,0,-45]) cube(150);
    }

    translate([0,35,0]) rotate([0,0,12]) difference(){
        translate([-400,-36,0]) cube([400,35,35]);
        translate([-1,-34.4,1.6]) cube([202,31.8,31.8]);
        rotate([0,0,-6]) translate([0,-40,-1]) cube(50);
    }
}

module front () translate([65,17.5,-12.5]) 
            rotate([0,0,180]) rotate([-90,0,0]){
        translate([0,35,0]) difference(){
            translate([0,-36,0]) cube([200,35,35]);
        translate([-1,-34.4,1.6]) cube([202,31.8,31.8]);
        rotate([0,0,6]) translate([-40,-40,-1]) cube(40);
        translate([113,1,17.5]) rotate([0,0,-45]) 
                rotate([90,0,0]) cylinder(r=19,h=80);
        translate([64,-36,-1]) rotate([0,0,-45]) cube(150);
    }

    translate([0,35,0]) rotate([0,0,12]) difference(){
        translate([-400,-36,0]) cube([400,35,35]);
        translate([-1,-34.4,1.6]) cube([202,31.8,31.8]);
        rotate([0,0,-6]) translate([0,-40,-1]) cube(50);
    }
}

module back(){    
    // main seat back 35x1.6 SHS
    translate([-493,0,229]) rotate([0,-45,0]) difference(){
        cube([35,35,450],center=true);                      //  450
        cube([31.8,31.8,452],center=true);
        translate([0,0,-236]) 
                rotate([0,33,0]) cube([100,100,40],center=true);
        translate([0,0,239]) 
                rotate([0,22.5,0]) cube([100,100,40],center=true);
    }
}

module headRest(){
    //  head restraint 35x1.6 SHS
    translate([-647,0,450]) difference(){
        cube([35,35,150],center=true);                      //  150
        cube([31.8,31.8,452],center=true);
        translate([0,0,-89]) 
                rotate([0,-22.5,0]) cube([100,100,40],center=true);
        translate([0,0,87]) 
                rotate([0,-45,0]) cube([100,100,40],center=true);
    }
}