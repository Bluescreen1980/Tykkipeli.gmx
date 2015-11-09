//Tämä skripti käynnistetään objektista ja se 
//hakee objektin koordinaattien perusteella refrenssin arraysta:
//onko objektin koko alueen kohdalla ruutuja jotka eivät ole vapaana?

onko_varattu = false;

//haetaan skriptin käynnistänyt objekti, vähän hassusti GM:n perustaessa kaikki kollisiot
//piirtopinnan koordinaatteihin (joko suhteessa viewportiin tai kentän x y)
objekti = instance_nearest(x, y, object_index); 


//käydään array läpi
for (var yy = 0; yy < global.ruudut_korkeus; yy++){
gridY = yy*global.ruudun_koko;  
 
     for (var xx = 0; xx < global.ruudut_leveys; xx++){    
     gridX = xx*global.ruudun_koko;     
     
            if position_meeting(gridX,gridY, objekti){     
     
                    if (global.tasoarray[yy,xx] != 0){
                    onko_varattu = true;
                    }         
           } 
       } 
}

//global.varattu = onko_varattu;        globalia voisi myös käyttää (koska laiska)

return onko_varattu;
