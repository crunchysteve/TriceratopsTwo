use <./bolts.scad>

crossMember();
//translate([-34,-240,-8.5]) rotate([0,90,0]) kingpin();

module crossMember() color("lightblue"){
    xMemShell();
    translate([0,-264,-8.5]) kingBush();
    translate([0,264,-8.5]) kingBush();
    //translate([-19.5,277,0.5]) endcover();
    //translate([-19.5,-277,0.5]) mirror([0,1,0]) endcover();
    steerer();
}

module steerer() rotate([0,45,0]) difference(){
    union(){
        cylinder(r=16,h=20*sqrt(2));
        cylinder(r=14.8,h=20*sqrt(2)+3);
        cylinder(r=14.3,h=190);
    }
    translate([0,0,-1]) cylinder(r=12.7,h=192);
}

module endcover() translate([0,-2.9,2.8]) 
        rotate([45,0,0,]) cube([39,1.6,20]);

module kingBush(){
    translate([0,0,1]) difference(){
        cube([35,20,20],center=true);
        cube([37,16.8,16.8],center=true);
    }
}

module xMemShell() difference(){
    cube([35,548,35],center=true);
    cube([33.4,550,33.4],center=true);
    translate([-18,-274,5/sqrt(2)]) rotate([45,0,0]) cube([37,20,20]);
    translate([-18,274,5/sqrt(2)]) rotate([45,0,0]) cube([37,20,20]);
    translate([0,264,-7.5]) cube([50,20,20],center=true);
    translate([0,-264,-7.5]) cube([50,20,20],center=true);
}