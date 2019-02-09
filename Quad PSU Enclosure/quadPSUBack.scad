
include <quadPSU.scad>
use <BarrelJack.scad>
depth = 2;
box_depth = 10;
thickness = 5;
inset = 0.8;

module boxes(){
    linear_extrude(depth) offset(r=radius) rectangles();        
    //translate([0,0,depth-box_depth]) linear_extrude(box_depth) hull() rectangles();
}
    
module joint(p){
    translate([0,0,depth]) linear_extrude(box_depth) offset(delta=-p) hull() rectangles();
}


union(){
    difference(){
        boxes();
        translate([box_width+radius/2+gap,10,0]) jack();
        translate([15,17,0]) cylinder(10,r=6,$fn=24) ;
        translate([140,17,0]) cylinder(10,r=6,$fn=24) ;
        translate([15,70,0]) cylinder(10,r=6,$fn=24) ;
        translate([140,70,0]) cylinder(10,r=6,$fn=24) ;
    }
    difference(){
        joint(inset);
        joint(inset+thickness);
    }
    //translate([0,0,depth]) linear_extrude(box_depth) hull() rectangles();
}



