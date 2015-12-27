//Tykkikuulaa obj_kuula liikuttava skripti 
//
// kuulan create-eventissä määritelty seuraavat asiat:
//
//startx = x;
//starty = y;
//targetx = global.kursoriX;
//targety = global.kursoriY;
//dist = distance_to_point(global.kursoriX, global.kursoriY);
//dir = point_direction(x, y, global.kursoriX, global.kursoriY);
//halfdist = dist/2;
//halfx= lengthdir_x(halfdist, dir);
//halfy= lengthdir_y(halfdist, dir);
//halfway = false;
//xdeviation = irandom(120)-60;
//ydeviation = irandom(120)-60;

var inst;

//varmistaa että kuula etenee varmasti kohdekoordinaatteihin
move_towards_point(targetx, targety, global.ballspeed);


//jos olet lähellä kohdekoordinaatteja, luo räjähdys
if (x < targetx+20 && x > targetx-20){ 
    
    if (y < targety+20 && y > targety-20){

    inst = instance_create(x, y, obj_explosion);
    destroy_ball = true;
    }
 }
 


//säädetään kuulan kokoa lennossa
if (halfway = false){
image_xscale =  image_xscale+0.1
image_yscale =  image_yscale+0.1
}
else if (halfway = true){
image_xscale =  image_xscale-0.1
image_yscale =  image_yscale-0.1
}

