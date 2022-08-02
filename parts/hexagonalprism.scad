hex_prism(6.2,6);



module hex_prism(r,h){
    linear_extrude(height=h){
        hex(r);
    }
}

module hex(r){
    polygon(points = [[r,0],[r/2,r*sqrt(3)/2],
                [-r/2,r*sqrt(3)/2],[-r,0],
                [-r/2,-r*sqrt(3)/2],[r/2,-r*sqrt(3)/2]]);
}