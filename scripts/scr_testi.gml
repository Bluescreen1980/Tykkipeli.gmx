
//Tämä skripti luo globaaliin ruudukkoon perustuen jonon neliruutuisia muurinpalasia keskelle ruutua,
//sekä pystyyn että leveyteen.


for (var i = 0; i <= global.ruudut_korkeus; i++){
    
         
     for (var j = 0; j <= global.ruudut_leveys; j++){          
     
     
           if (i= global.ruudut_korkeus/2){
     
                 if( j div 4 == j/4){  //div jakaa ilman jakojäännöstä    
                     //spawnaa joka neljännen "ruudun" välein uuden palikan leveyssuunnassa
                     
                     global.tasoarray[i,j]= 1;
                     
                     inst = instance_create(j*global.ruudun_koko+32,i*global.ruudun_koko+32, obj_palikka);
                    with (inst)
                    {
                      //voisimme antaa luomallemme instanssille arvoja tässä.
                    } 
                   }   
               }
               
               
               
            if (j= global.ruudut_leveys/2){       
                   
                    if( j div 4 == j/4){  //div jakaa ilman jakojäännöstä    
                     //spawnaa joka neljännen "ruudun" välein uuden palikan korkeussuunnassa 
                     
                     global.tasoarray[i,j]= 1;
                     
                     inst = instance_create(j*global.ruudun_koko+32,i*global.ruudun_koko+32, obj_palikka);
                    with (inst)
                    {
                      //voisimme antaa luomallemme instanssille arvoja tässä.
                    } 
                   }
              }    
                   
                             
                 
  }

}
 
