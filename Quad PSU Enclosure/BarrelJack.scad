
module jack(){
    difference(){
        cylinder(h=8,r=4.1,$fn=24);
        translate([3.6,-2,0]) cube([2,8,8]);
        translate([-5.6,-2,0]) cube([2,8,8]);
    }
};

jack();