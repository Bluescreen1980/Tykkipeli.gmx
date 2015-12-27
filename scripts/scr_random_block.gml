//Tämä skripti antaa sen käynnistämälle objektille uuden sattumanvaraisen blokki-spriten.
//Spriteä käytetään kollisioinnissa.
      
   image_xscale =  1; //nollataan X ja Y-scale varmuuden vuoksi
   image_yscale =  1;

if (global.block_generate_mode = 0){    //For testing
    if (global.temp_enter_pressed >7){
    global.temp_enter_pressed = 1};

        if (global.temp_enter_pressed = 0){
        image_xscale =  global.ruudun_koko / sprite_width;
        image_yscale =  global.ruudun_koko / sprite_height;
        }
    random_palikka = global.temp_enter_pressed;
}
 
 
//Sattumanvaraisen palikan arvonta
if (global.block_generate_mode = 1){        //Sattumanvaraiset palikat
    numero = irandom(6)+1;
    
    if (numero != global.edellinen_numero){ 
    random_palikka = numero;   
    global.edellinen_numero = random_palikka;    
    }
    else {
     random_palikka = irandom(6)+1;
     global.edellinen_numero = random_palikka; 
     }
}


{
switch (random_palikka)
   {
   case 0: //varmuudeksi tämäkin case
     sprite_index = spr_palikka;
      image_xscale = global.ruudun_koko / sprite_width  ;
      image_yscale = global.ruudun_koko / sprite_height  ;
      break;  
   
   case 1:
      sprite_index = spr_T_palikka;
      
      //astetaan spriten koko uusiksi (x ja yscale ovat kertoimia spriten 
      //kokoon, eli suoraan ei voi pikseli kokoa asettaa vaan se täytyy
      //laskea suhteessa.
      image_xscale =  global.ruudun_koko / sprite_width * 3   ;
      image_yscale =  global.ruudun_koko / sprite_height * 2  ;

      break;
   case 2:
      sprite_index = spr_L_palikka;
      image_xscale =  global.ruudun_koko / sprite_width * 3   ;
      image_yscale =  global.ruudun_koko / sprite_height * 2  ;


      break;     
   case 3:
      sprite_index = spr_palikka; //1x1 ruudun palikka
      image_xscale = global.ruudun_koko / sprite_width  ;
      image_yscale = global.ruudun_koko / sprite_height  ;

      break;      
   case 4:
      sprite_index = spr_kulmapalikka;
      image_xscale =  global.ruudun_koko / sprite_width * 2   ;
      image_yscale =  global.ruudun_koko / sprite_height * 2  ;
      break;   
   case 5:
      sprite_index = spr_nelio; //siis 2x2 ruudun iso neliö
      image_xscale =  global.ruudun_koko / sprite_width * 2   ;
      image_yscale =  global.ruudun_koko / sprite_height * 2  ;
      break;  
   case 6:
      sprite_index = spr_S_palikka;
      image_xscale =  global.ruudun_koko / sprite_width * 3   ;
      image_yscale =  global.ruudun_koko / sprite_height * 2  ;
      break;      
   case 7:
      sprite_index = spr_suora;
      image_xscale =  global.ruudun_koko / sprite_width * 4   ;
      image_yscale =  global.ruudun_koko / sprite_height * 1  ;
      break;     
      }
}

