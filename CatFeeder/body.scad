


//square([12,24]);



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
