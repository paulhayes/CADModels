

slot_size=[27,3];
thickness=[1,1];
v_Thickness = 1;
lip=[5,5];
height=60;
hole_position=50;


linear_extrude(v_Thickness) difference(){ 
    translate(-lip) square(slot_size+2*lip) ;
    square(slot_size);
};

module shoot() {
translate([0,0,0.2]) rotate([3,0,0])  linear_extrude(height) difference(){
    translate(-thickness) square(slot_size+2*thickness) ;
    square(slot_size);
};
}


difference(){
    shoot();
    translate([slot_size[0]/2,4,hole_position]) rotate([90,0,0]) cylinder(h=20,r=3,$fn=20);
    translate([-50,-50,height]) cube([100,100,10]);    
}

