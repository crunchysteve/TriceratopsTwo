use <./bolts.scad> use <./mainMember.scad> use<./crossmember.scad>
use<./tiltBrkt.scad> use<./frntBrkt.scad> use<./tierod.scad>

//  import STL of rendered approximation of the 
//  rear triangle being used in my build
module rearTri() color("lightgray") import("./RearTri.stl");

//  Main center frame
mainMember();   //  35mm x 1.6 steel Square Hollow Section (SHS)
                //  38mm x 2.0mm steel Elliptical How Section (EHS)

//  Front bracket, where the pedals mount.
translate([0,0,-104]) rotate([0,-12,0]) frntBrkt(); //  30mm SHS
                                                    //  donor BB

//  Main steering member
translate([-64,0,-64]) crossMember();   //  35mm SHS, donor steerer

//  Donor rear triangle from old Mongoose dual suspension 26er
translate([-550,0,-39]) rotate([0,10,0]) rearTri(); //  donor rear

//  Steering tilt brackets
translate([-89,250,-86.5]) tiltBrkt();  //  35mm x 5mm SHS
                                        //  M12 x 140 bolt
mirror([0,1,0]) translate([-89,250,-86.5]) tiltBrkt();  //  as above
                                        //  make as opposite hand
//  Steerer tilt brackets have the axle bolts weld in place and
//  have a 13mm forward offset to countersteer the tilt.

//  Tierods
translate([-111,15.5,32.5]) tierod();
mirror([0,1,0]) translate([-111,15.5,32.5]) tierod();
//  Made by welding M8 coupling nuts into the ends of steel tubing
//  then M8 flexible joints are screwed into the M8 coupling nuts
//  As main frame leans into a corner, the inside end of the
//  crossmember pivots towards the rear, causing the tierods to
//  force the tilt brackets, and therefore the wheels, to tilt 
//  into the corner. Moving the frame ends of the tierods forwards
//  or backwards along the slotted bracket causes a more aggressive
//  lean if moved towards the rear, or gentler if moved forwards.
//  Fit lock nuts on the flexible couplers before fitting to tierods.

//  track lines
//color("red") translate([-1000,-280,32]) 
//        rotate([0,90,0]) cylinder(r=2,h=1500);
//color("red") translate([-1000,-330,32]) 
//        rotate([0,90,0]) cylinder(r=2,h=1500);
//color("red") translate([-1000,-380,32]) 
//        rotate([0,90,0]) cylinder(r=2,h=1500);
//color("red") translate([-1000,280,32]) 
//        rotate([0,90,0]) cylinder(r=2,h=1500);
//color("red") translate([-1000,330,32]) 
//        rotate([0,90,0]) cylinder(r=2,h=1500);
//color("red") translate([-1000,380,32]) 
//        rotate([0,90,0]) cylinder(r=2,h=1500);