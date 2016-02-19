global.gamemode = 0 ; // olisko 1 = rakentelu 2 = tykkien asettelu 3 = ampumisvuoro?
global.aika = 0; // Alkaa nollasta. Ajastin 45s rakentelua, 30s ampumista, 30s tykkien asettelu

global.ruudun_koko = 22;   //yhden ruudun koko pikseleinä. 
global.ruudut_leveys = room_width/global.ruudun_koko; //laskee ruutujen määrän ikkunan koon mukaan
global.ruudut_korkeus = room_height/global.ruudun_koko; //laskee ruutujen määrän ikkunan koon mukaan
global.varattu = false; //voiko ruutuun rakentaa vai ei.
global.kursoripalikkaX = 5;  //aloitusruudut kursoripalikoille
global.kursoripalikkaY = 5;
global.kursoriX = 0;
global.kursoriY = 0;
global.kursoriX2 = 0;
global.kursoriY2 = 0;
global.ballspeed = 12; //ammusten nopeus
global.temp_enter_pressed = 0; // enterin painalluksia laskeva numero
global.temp_enter2_pressed = 0; //kakkospelaajan "enter"
global.block_generate_mode = 1 ; // se miten blokit määräytyy 0 = järjestyksessä (testi) 1=randomilla
global.edellinen_numero = 0; // temp
global.voiasettaa1 = false;
global.voiasettaa2 = false;

global.rakenteluaika=45;

//global.tasoarray pitää sisällään kaksiulotteisessa taulukossa kentän ruudut, array
//luodaan alussa pitämään sisällään kaikki pelialueen sisäiset ruudut
// 
//global.tasoarray[i,ruudut_korkeus] = n;
//
//n tarkoittaa 0=voi rakentaa 1= blokattu ykkospelaajalta, 2 = blokattu kakkospelaajalta, 3 = blokattu molemmilta
//
//alustamme tasoarrayn Aku-Ankka tason koodilla. 


for (var yy = 0; yy < global.ruudut_korkeus; yy++){
    
     for (var xx = 0; xx < global.ruudut_leveys; xx++){         
        global.tasoarray[yy,xx] = 0;
        //tyhjää täynnä
    }
    
}


// Merkataan reunat blokatuiksi
for (var yy = 0; yy < global.ruudut_korkeus; yy++){
    global.tasoarray[yy,global.ruudut_leveys-1] = 3;
    global.tasoarray[yy,0] = 3;  
}

for (var xx = 0; xx < global.ruudut_leveys; xx++){
    global.tasoarray[global.ruudut_korkeus-1,xx] = 3;
    global.tasoarray[0,xx] = 3;
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

/*
global.grapharray tätä arrayta käytetään objektien grafiikoiden piirtämiseen.
Tällä arraylla myös kerrotaan muille skripteille objektien tyyppi.

n tarkoittaa    0 = ei grafiikkaa   1 = seinä   2 = sisäpiha
*/
for (var yy = 0; yy < global.ruudut_korkeus; yy++){
    
     for (var xx = 0; xx < global.ruudut_leveys; xx++){         
        global.grapharray[yy,xx] = 0;
    }
}

scr_updateField();
