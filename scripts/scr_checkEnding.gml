// case-rakenne eri sääntösetteihin (global.ruleset), kirjaa global.voittaja muuttujaan voittajan numeron 
// ja palauttaa true jos peli on loppu (ei yhtään tykkitornia jommalla kummalla puolella)

peliohi=false;

switch (global.ruleset)
{
case 1:
//sääntösetti 1
break;
case 2:
//sääntösetti 2
break;
case 3:
//sääntösetti 3
break;

default: 
//default jos ei sopivaa arvoa ole, esim nolla.

   
     if (global.tykkeja2 <= 0 && global.tykkeja1 >=1){
        //1.pelaaja voitti   
        peliohi=true;
        global.voittaja=1;
        str = "YKKÖSPELAAJA MURSKAUS
    
        Kakkospelaaja hävisi nolosti!";
        show_message(str); 
    }    
    else if (global.tykkeja1 <= 0 && global.tykkeja2 >=1){
        //2.pelaaja voitti 
        peliohi=true;  
        global.voittaja=2;
        str = "KAKKOSPELAAJA PÄTEE
        Ykkönen olikin kakkonen!";
        show_message(str); 
    }
    break;
}

return peliohi;

