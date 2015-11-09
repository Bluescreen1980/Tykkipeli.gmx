//objekti = instance_nearest(x, y, object_index); //haetaan skriptin käynnistänyt objekti
onko_varattu = false;
gridX = x/global.ruudun_koko;
gridY = y/global.ruudun_koko;


        if (global.tasoarray[gridY,gridX] != 0){
            onko_varattu = true;
            //tarkistetaan onko arrayn määräämässä kohdassa pelikentällä objektia.
             }    

return onko_varattu;
