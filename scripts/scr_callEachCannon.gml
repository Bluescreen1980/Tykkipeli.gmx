// this script is called by Cursor
// to forward a call to shoot at x,y defined by cursor

x = argument0;
y = argument1;
// taking cursor's position (the ones at the moment this script was called)
// we need them later to bomb places

var i; // just to help us
enemy[] = 0;

for (i = 0; i < instance_number(obj_tykki); i += 1)
   {
   instance_find(obj_tykki,i)script_execute(scr_shootPlace, x, y);
   // now we call shootPlace script from each turret
   
   
   }
   