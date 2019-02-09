



depth=2;
radius=170/2;
rim=4;
centre_depth=0.6;
arm_width=5;
arm_length=12;
arm_thickness=2;
hole_spacing=2.54;
hole_size=1.2;
arm_offset=18;
servo_cutout = [30,30];

linear_extrude(depth) difference(){
    circle(radius,$fn=100);
    circle(radius-rim,$fn=100);
    translate([-radius,-servo_cutout.y/2,0]) square(servo_cutout);    
}

linear_extrude(centre_depth) difference(){
    circle(radius-rim,$fn=100);
    translate([-radius,-servo_cutout.y/2,0]) square(servo_cutout);
}

translate([-radius,0,0]) rotate([90,180,0]) translate([-12,-depth-arm_width,arm_offset]) linear_extrude(arm_thickness) difference(){
    union(){
        square([arm_length,arm_width]);
        translate([-arm_width,arm_width,0]) square([arm_length+arm_width,arm_width]);
        translate([0,arm_width,0]) circle(arm_width,$fn=50);
    }
    translate([arm_length-hole_spacing,arm_width/2,0]) circle(hole_size/2);
    translate([arm_length-hole_spacing*2,arm_width/2,0]) circle(hole_size/2);
    translate([arm_length-hole_spacing*3,arm_width/2,0]) circle(hole_size/2);
    translate([-arm_width,arm_width+depth,0]) square([arm_length+arm_width,arm_width]);
}


/*
module case(){
    w=24;
    h=12;
    d=15;
    w_thickness=4;
    h_thickness=2;
    hole_edge=2;
    linear_extrude(d)
    difference() {
        polygon(points=[
            [0,0],
            [w,0],
            [w,h],
            [0,h],
            [-w_thickness,-h_thickness],
            [w+w_thickness,-h_thickness],
            [w+w_thickness,h+h_thickness],
            [-w_thickness,h+h_thickness],
        ],paths=[[0,1,2,3],[4,5,6,7]]);
        translate([hole_edge-w_thickness,h/2]) circle(1, $fn=10);
        translate([w-hole_edge+w_thickness,h/2]) circle(1, $fn=10);
    }
}

module tooth(length, width, height, head_height) {
    linear_extrude(height = head_height) {
        polygon([[-length / 2, 0], [-width / 2, height], [width / 2, height], [length / 2,0]]);
    }
}

module clip(){
   d=10;   
   l=25;
   gap_top = 3;
   gap_bottom = 4;
   thickness=2;
   direction = [1,0];
   normal = [direction[1],-direction[0]];
   list=[
        [-thickness,gap_bottom+1.3*thickness],

        [l,gap_top+thickness],[l,gap_top],[0,gap_bottom],[0,gap_bottom],

        [0,thickness],[l,thickness],[l,0],[0,0],
        [-thickness,0]
    ];   
   
   linear_extrude(d)
   polygon(points=list);
   
}


case();
translate([5,15,0]) rotate(90,0,0) clip();

*/
