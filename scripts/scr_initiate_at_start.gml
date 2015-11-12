global.gamemode = 1 ; // olisko 1 = rakentelu 2 = tykkien asettelu 3 = ampumisvuoro?

global.ruudun_koko = 22;   //yhden ruudun koko pikseleinä. 
global.ruudut_leveys = room_width/global.ruudun_koko; //laskee ruutujen määrän ikkunan koon mukaan
global.ruudut_korkeus = room_height/global.ruudun_koko; //laskee ruutujen määrän ikkunan koon mukaan
global.varattu = false; //voiko ruutuun rakentaa vai ei.
global.kursoripalikkaX = 5;  //aloitusruudut kursoripalikoille
global.kursoripalikkaY = 5;


//global.tasoarray pitää sisällään kaksiulotteisessa taulukossa kentän ruudut, array
//luodaan alussa pitämään sisällään kaikki pelialueen sisäiset ruudut
// 
//global.tasoarray[i,ruudut_korkeus] = n;
//
//n tarkoittaa 0=voi rakentaa 1= blokattu ykkospelaajalta, 2 = blokattu kakkospelaajalta 
//
//alustamme tasoarrayn Aku-Ankka tason koodilla. 


for (var yy = 0; yy < global.ruudut_korkeus; yy++){
    
     for (var xx = 0; xx < global.ruudut_leveys; xx++){         
        global.tasoarray[yy,xx] = 0;
        //tyhjää täynnä
    }
}

/*
global.pihaarray pitää sisällään kaksiulotteisessa taulukossa kentän ruudut, array
luodaan alussa pitämään sisällään kaikki pelialueen sisäiset ruudut

n tarkoittaa 0=ei pihaa     1=osa pihaa     2=seinä
*/

for (var yy = 0; yy < global.ruudut_korkeus; yy++){
    
     for (var xx = 0; xx < global.ruudut_leveys; xx++){         
        global.pihaarray[yy,xx] = 1;
        //alustetaan kaikki ruudut sisäpihaksi
    }
}
