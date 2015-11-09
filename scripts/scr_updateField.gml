
//Tämä skripti luo ruudukon mukaan 1 ruudun palikoita kentälle

 

// tuhotaan kaikki tietyntyyppiset objektit (toimii varmemmin näin)

with (obj_palikka)
{
    instance_destroy();
}


//käydään array läpi
for (var yy = 0; yy < global.ruudut_korkeus; yy++){
gridY = yy*global.ruudun_koko;  
 
     for (var xx = 0; xx < global.ruudut_leveys; xx++){    
     gridX = xx*global.ruudun_koko;     
              
                    if (global.tasoarray[yy,xx] == 1){
                      //jos tasoruudukossa on varattu ruutu, luo objekti.       
                         
                     inst = instance_create(gridX,gridY, obj_palikka);
                    with (inst)
                      {
                      //    voisimme antaa luomallemme instanssille arvoja tässä.
                      } 
                  } 
       } 
}
    
         
 
                
           
               
               
               
         


 
