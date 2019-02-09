size=20;
thickness=4;

difference()
{
    sphere(r=size, $fn=100);
    sphere(r=size-3, $fn=100);
    translate([-size, -size, -size*2])
    {
        cube(2*size);
    }
}

