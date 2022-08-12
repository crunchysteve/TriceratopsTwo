use <../wheelERTRO406-50.scad>

//color("red") translate([-71,0,20]) 
  //      rotate([0,-90,0]) cylinder(r=2,h=250);

turn = 30;

rotate([turn/sqrt(2) + turn/sqrt(2)/14,0,0]){
    rotate([turn/sqrt(2)/33,0,0]){
        difference(){
            translate([-550,0,0]) 
                    rotate([0,90,0]) sqrTube(s=35,h=900);
            rotate([0,45,0]) 
                    translate([0,0,-50]) cylinder(r=19,h=100);
        }
        translate([-410,0,0]) 
                rotate([0,-45,0]) sqrTube(s=35,h=450);
        translate([40,0,-71]) 
                rotate([0,68,0]) sqrTube(s=35,h=185);
        translate([-723,0,306]) sqrTube(s=35,h=150);
        translate([-520,0,-71]) 
                rotate([0,68,0]) sqrTube(s=35,h=185);
        rotate([0,45,0]) 
                translate([0,0,-50]) rndTube(r=19,w=2,h=100);
    }
    
    translate([-929,0,-253]){
        wheel();
        //color("red") translate([0,5000,253]) 
          //      rotate([90,0,0]) cylinder(r=5,h=10000);
    }
    
    color("blue") translate([-520,0,-72]) 
        rotate([0,10,0]) rotate([0,0,-0.5]) import("../RearTri.stl");

    crossArm();
}

translate([-71,0,0])rotate([0,0,-turn/sqrt(2)]){
    translate([0,-310,0]) rotate([turn,0,0]) fWheel();
    translate([0,310,0]) rotate([turn,0,0]) fWheel();
}

module crossArm() rotate([0,45,0]) rotate([0,0,-turn]){
    translate([0,250,-98]) 
            rotate([0,45,0]) rotate([90,0,0]) sqrTube(s=35,h=500);
    translate([0,0,-119]) rndTube(r=14.3,w=2,h=220);
    
}

module fWheel(){
    translate([0,0,-253]) scale([1,100/135,1]) wheel();
    //color("red") translate([0,5000,0]) 
      //      rotate([90,0,0]) cylinder(r=5,h=10000);
}

module sqrTube(s=40,w=1.6,h=100){
    linear_extrude(height=h) difference(){
        square(s,center=true);
        square(s-2*w,center=true);
    }
}

module rndTube(r=14.3,w=2,h=145){
    linear_extrude(height=h) difference(){
        circle(r);
        circle(r-w);
    }
}