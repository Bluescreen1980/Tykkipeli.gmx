//Skripti tarkistaa onko linna vedenpitävä

//nollataan aiemmat piha tiedot
for (var yy = 0; yy < global.ruudut_korkeus; yy++){
 
     for (var xx = 0; xx < global.ruudut_leveys; xx++){

                global.pihaarray[yy,xx] = 1;
          
     }
}

//Merkataan seinät
for (var yy = 0; yy < global.ruudut_korkeus; yy++){
 
     for (var xx = 0; xx < global.ruudut_leveys; xx++){

            if(global.tasoarray[yy,xx] == 1){
                global.pihaarray[yy,xx] = 2;
            }
          
     }
}

//Tarkistetaan vasen yläkulma
if (global.pihaarray[0,0] ==  1){
    global.pihaarray[0,0] =  0;                                                     //Merkataan että vasen yläkulma ei ole linnan sisäpihaa
}

//Tarkistetaan oikea alakulma
if (global.pihaarray[0,0] ==  1){
    global.pihaarray[global.ruudut_korkeus-1,global.ruudut_leveys-1] =  0;         //Merkataan että oikea alakulma ei ole linnan sisäpihaa
}


//Merkataan linnan ulkopuoliset alueet pois sisäpihan vaikutuksesta

//Käydään taulukko läpi vasemmasta yläkulmasta alkaen
for (var yy = 0; yy < global.ruudut_korkeus; yy++){
 
     for (var xx = 0; xx < global.ruudut_leveys; xx++){
     
        if (yy != 0 && xx != 0){
            if (global.pihaarray[yy,xx] == 1 && (global.pihaarray[yy-1,xx] == 0 || global.pihaarray[yy-1,xx-1] == 0)) {
                        global.pihaarray[yy,xx] = 0;
            }
        }
     
        if (yy != 0){
            if (global.pihaarray[yy,xx] == 1 && global.pihaarray[yy-1,xx] == 0 ) {
                        global.pihaarray[yy,xx] = 0;
            }
        }
        
        if (xx != 0){
            if (global.pihaarray[yy,xx] == 1 && global.pihaarray[yy,xx-1] == 0 ) {
                        global.pihaarray[yy,xx] = 0;
            }
        }
    }
}


//Käydään taulukko läpi oikeasta alakulmasta alkaen
for (var yy = global.ruudut_korkeus-1; yy >= 0; yy--) {

    for (var xx = global.ruudut_leveys-1; xx>= 0; xx--){
    
        if (yy != global.ruudut_korkeus-1 && xx != global.ruudut_leveys-1){
            if (global.pihaarray[yy,xx] == 1 && (global.pihaarray[yy+1,xx] == 0 || global.pihaarray[yy+1,xx+1] == 0)) {
                        global.pihaarray[yy,xx] = 0;
            }
        }
    
        if (yy != global.ruudut_korkeus-1){
            if (global.pihaarray[yy,xx] == 1 && global.pihaarray[yy+1,xx] == 0 ) {
                        global.pihaarray[yy,xx] = 0;
            }
        }
        
        if (xx != global.ruudut_leveys-1){
            if (global.pihaarray[yy,xx] == 1 && global.pihaarray[yy,xx+1] == 0 ) {
                        global.pihaarray[yy,xx] = 0;
            }
        }
    
    }

}

//Tarksitetaan vedenpitävyys NE suunnassa
for (var yy = 0; yy < global.ruudut_korkeus; yy++){
 
     for (var xx = 0; xx < global.ruudut_leveys; xx++){
 
           if ((yy != global.ruudut_korkeus-1 || xx != global.ruudut_leveys-1) || (yy != 0 || xx != 0)){
            
                if (global.pihaarray[yy,xx] == 1 && (global.pihaarray[yy+1,xx-1] == 0 || global.pihaarray[yy-1,xx+1] == 0)) {
                        global.pihaarray[yy,xx] = 0;
                }
           
           }         
     }
}
