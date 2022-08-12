use <./bolts.scad>

mainFrame();

module mainFrame() color("lightblue"){
    //  main horizontal 35x1.6 SHS
    difference(){
        translate([-340,0,34]) rotate([0,-12,0]) difference(){
            cube([3,35,35],center=true);                  //  650
            cube([502,31.8,31.8],center=true);
        }
    }
    
    //  old main horizontal 35x1.6 SHS
    difference(){
        translate([-80,0,65]) difference(){
            cube([320,35,35],center=true);                  //  650
            cube([972,31.8,31.8],center=true);
        }
        //  front chamfer cut
        translate([125,0,45]) 
                rotate([0,-45,0]) cube(100,center=true);
        
        //  cylindical cut for steering boss
        rotate([0,45,0]) 
                translate([0,0,25]) cylinder(r=19,h=100);
    }

    //  steering boss 38x2 EHS
    rotate([0,45,0]) translate([0,0,34]) difference(){
        cylinder(r=19,h=100);                               //  
        translate([0,0,-1]) cylinder(r=17,h=102);
    }

    //  Front horizontal 35x1.6 SHS
    translate([90,0,40]) rotate([0,90,0]) difference(){
        cube([35,35,100],center=true);                      //  200
        cube([31.8,31.8,252],center=true);
//        translate([0,0,-75]) 
//                rotate([0,45,0]) cube(60,center=true);
        translate([30,0,-75]) 
                rotate([0,-45,0]) cylinder(r=19,h=100);
    }
    
    //  front bracket stator 35x1.6 SHS
    translate([307,0,76.1]) rotate([0,-12,0]) difference(){
        cube([350,35,35],center=true);                      //  350
        cube([352,31.8,31.8],center=true);
    }

    //  front bracket lock threads M8 nuts
    translate([390,0,110]) rotate([0,-12,0]){
        nut(8);
        translate([50,0,0]) nut(8);
    }
    
    // main seat back 35x1.6 SHS
    translate([-493,0,229]) rotate([0,-45,0]) difference(){
        cube([35,35,450],center=true);                      //  450
        cube([31.8,31.8,452],center=true);
        translate([0,0,-236]) 
                rotate([0,45,0]) cube([100,100,40],center=true);
        translate([0,0,239]) 
                rotate([0,22.5,0]) cube([100,100,40],center=true);
    }

//    //  seat gusset 35x1.6 SHS
//    translate([-274,-17.5,51.5]) difference(){
//        rotate([0,-62.5,0]) difference(){
//            cube([35,35,150]);                              //  150
//            translate([1.6,1.6,-1])cube([31.8,31.8,152]);
//        }
//        translate([-60,-1,0]) cube([100,37,31]);
//        translate([-47,-1,30]) rotate([0,-135,0]) cube([120,37,35]);
//    }

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