box_width=72;
box_height=40;
box_depth=40;
clip_height=20;
clip = 3;
clip_width=box_width+clip*2;
radius=12;
gap=-2  ;
depth=100;
screwRadius=4;

module rectangles(){ 
    for(i=[0:1]){
        for(j=[0:1]){
            translate([i*(box_width+gap+radius),j*(box_height+gap+radius)])
            union() { 
                square([box_width,box_height]);
                translate([(box_width-clip_width)/2,(box_height-clip_height)/2]) square([clip_width,clip_height]);
            }
        }
    }
}

module boxes(){
    difference(){
        linear_extrude(depth) offset(r=radius) rectangles();        
        linear_extrude(depth) rectangles();
    };
    //translate([0,0,depth-box_depth]) linear_extrude(box_depth) hull() rectangles();
}
    

difference(){
    boxes();
    translate([0,0,depth-box_depth]) linear_extrude(box_depth) hull() rectangles();
}



