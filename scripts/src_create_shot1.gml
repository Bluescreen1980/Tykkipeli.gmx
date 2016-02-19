if (global.gamemode == 3){

var inst;

loading++;

if (loading >global.tykkitulinopeus+gunDamagePenalty){

loading = 0;

kuula = instance_create(x, y, obj_kuula);

with (kuula)
   {
   speed = 20;
   direction = point_direction(startx, starty, global.kursoriX, global.kursoriY);  
   targetx = global.kursoriX;
   targety = global.kursoriY;
   }   

 }
}