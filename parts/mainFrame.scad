use <./bolts.scad>

mainFrame();

module mainFrame() color("lightblue"){
    //  main horizontal 35x1.6 SHS
    difference(){
        translate([-160,0,60]) difference(){
            cube([650,35,35],center=true);                  //  650
            cube([972,31.8,31.8],center=true);
        }
        //  front chamfer cut
        translate([198,0,40]) 
                rotate([0,-45,0]) cube(100,center=true);
        
        //  cylindical cut for steering boss
        rotate([0,45,0]) 
                translate([0,0,25]) cylinder(r=19,h=100);
    }

    //  steering boss 38x2 EHS
    rotate([0,45,0]) translate([0,0,34]) difference(){
        cylinder(r=19,h=100);                               //  
        translate([0,0,-1]) cylinder(r=17.4,h=102);
    }

    //  "cowcatcher" diagonal upright 35x1.6 SHS
    translate([162,0,50]) rotate([0,45,0]) difference(){
        cube([35,35,225],center=true);                      //  230
        cube([31.8,31.8,252],center=true);
        translate([20,0,-146]) 
                rotate([0,-45,0]) cube(100,center=true);
    }

    //  "cowcatcher" ramp diagonal
    difference(){
        translate([288,0,62.5]) rotate([0,70,0]) difference(){
            cube([35,35,370],center=true);                  //  300
            translate([0,0,-1]) cube([31.8,31.8,372],center=true);
        }
        translate([370,0,128.5]) cube([220,42,42],center=true);
        translate([107,0,0]) 
                rotate([0,45,0]) cube([42,42,220],center=true);
    }

    //  front bracket stator 35x1.6 SHS
    translate([365,0,125]) difference(){
        cube([350,35,35],center=true);                      //  350
        cube([352,31.8,31.8],center=true);
    }

    //  front bracket lock threads M8 nuts
    translate([450,0,142.5]) nut(8);
    translate([500,0,142.5]) nut(8);

    // main seat back 35x1.6 SHS
    translate([-498,0,224]) rotate([0,-45,0]) difference(){
        cube([35,35,450],center=true);                      //  450
        cube([31.8,31.8,452],center=true);
        translate([0,0,-236]) 
                rotate([0,45,0]) cube([100,100,40],center=true);
        translate([0,0,239]) 
                rotate([0,22.5,0]) cube([100,100,40],center=true);
    }

    //  seat gusset 35x1.6 SHS
    translate([-279,-17.5,46.5]) difference(){
        rotate([0,-62.5,0]) difference(){
            cube([35,35,150]);                              //  150
            translate([1.6,1.6,-1])cube([31.8,31.8,152]);
        }
        translate([-60,-1,0]) cube([100,37,31]);
        translate([-47,-1,30]) rotate([0,-135,0]) cube([120,37,35]);
    }

    //  head restraint 35x1.6 SHS
    translate([-652,0,445]) difference(){
        cube([35,35,150],center=true);                      //  150
        cube([31.8,31.8,452],center=true);
        translate([0,0,-89]) 
                rotate([0,-22.5,0]) cube([100,100,40],center=true);
        translate([0,0,87]) 
                rotate([0,-45,0]) cube([100,100,40],center=true);
    }
}