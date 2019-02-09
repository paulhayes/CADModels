$fn=100;

union() { 
	translate([-5,0,0]) cube([10,10,10]); 
	translate([-25,0,10]) cube([50,10,5]); 
}


/*
translate([13,2.5,0]) 
	difference() { 
		cylinder(10,5, 5); 
		translate([0,0,1]) cylinder(11,4.6,4.6); 
	}

translate([10,15,10]) cylinder(11,4.6,0); 

*/