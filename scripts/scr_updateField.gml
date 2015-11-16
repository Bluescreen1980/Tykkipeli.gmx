
//Tämä skripti luo ruudukon mukaan 1 ruudun palikoita kentälle

 

// tuhotaan kaikki tietyntyyppiset objektit (toimii varmemmin näin)

with (obj_palikka)
{
    instance_destroy();
}

scr_Clear_Yard_Data();  //Tyhjennetään piha data
        
//tarkastetaan sisäpihat skripti pitää toistaa muutaman kerran että se toimii oikein
for(var i=0; i<5 ; i++){
    scr_Check_Castle();
}

//käydään array läpi
for (var yy = 0; yy < global.ruudut_korkeus; yy++){
gridY = yy*global.ruudun_koko;  
 
     for (var xx = 0; xx < global.ruudut_leveys; xx++){    
     gridX = xx*global.ruudun_koko;     
              
                    if (global.grapharray[yy,xx] == 1){
                      //jos tasoruudukossa on varattu ruutu, luo objekti.       
                         
                     inst = instance_create(gridX,gridY, obj_palikka);
                    with (inst)
                      {
                      //    voisimme antaa luomallemme instanssille arvoja tässä.
                      } 
                  } 
                  
                  if (global.pihaarray[yy,xx] == 1){
                      //jos piharuudukkossa on piha, luo objekti. Tämä on vain testikäytöä toistaiseksi       
                         
                     inst = instance_create(gridX,gridY, obj_palikka);
                    with (inst)
                      {
                            image_blend = c_aqua;
                      } 
                  } 
       } 
}
    
         
 
                
           
               
               
               
         


 
