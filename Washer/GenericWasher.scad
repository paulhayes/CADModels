outer_cylinder = 8;
inner_cylinder = 4.4;
height = 14;
number_x = 1;
number_y = 1;


for(i=[0:number_x-1]) 
for(j=[0:number_y-1]) 
translate([(outer_cylinder+1)*i,(outer_cylinder+1)*j,0])
difference(){
    cylinder(h=height,d=outer_cylinder,$fn=24);
    cylinder(h=height,d=inner_cylinder,$fn=24);
}
    
