size = 30;
// dfo : distance from origin
dfo =  0.5*size / cos(30);

polyhedron(
    points = [
        [0,0,sqrt(size*size-dfo*dfo)],
        dfo*[cos(0),sin(0),0],
        dfo*[cos(120),sin(120),0],
        dfo*[cos(240),sin(240),0]
    ],
    faces = [
        [1,2,3],
        [1,2,0],
        [2,3,0],
        [3,1,0]
    ]
    
);
