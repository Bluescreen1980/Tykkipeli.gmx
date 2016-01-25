/* Script used for Main Menu
   This script includes names for each buttons
   and their actions */
   
global.mainmenu_titles[0] = "Start";
global.mainmenu_titles[1] = "Options";
global.mainmenu_titles[2] = "Quit";


switch(argument0){

    case 0:
        // room_goto(rm_start);
        break;
    case 1:
        // room_goto(rm_Options);
        break;
    case 2:
        game_end();
        break;
    default:
        break;

}
