if (global.gamemode == 3){

var inst;

loading++;

if (loading >20){

loading = 0;

kuula = instance_create(x, y, obj_kuula2);

with (kuula)
   {
   speed = 20;
   direction = point_direction(startx, starty, global.kursoriX2, global.kursoriY2);  
   targetx2 = global.kursoriX2;
   targety2 = global.kursoriY2;
   }   

 }
}
