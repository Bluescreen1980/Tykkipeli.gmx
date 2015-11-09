//Tämä skriptin tarkoitus on verrata palikan koordinaatteja arrayhin ja merkitä kaikki ruudut jotka ovat palikan alla.

onko_varattu = true;

//haetaan skriptin käynnistänyt objekti
objekti = instance_nearest(x, y, object_index); 


//käydään array läpi
for (var yy = 0; yy < global.ruudut_korkeus; yy++){
gridY = yy*global.ruudun_koko;  
 
     for (var xx = 0; xx < global.ruudut_leveys; xx++){    
     gridX = xx*global.ruudun_koko;     
     
            if position_meeting(gridX,gridY, objekti){     
     
                    if (global.tasoarray[yy,xx] = 1){
                    global.tasoarray[yy,xx] = 0;            //merkitään ruutu vapaaksi
                    onko_varattu = false;
                    }         
           } 
       } 
}

//global.varattu = onko_varattu;        tätä voisi myös käyttää

return onko_varattu;
