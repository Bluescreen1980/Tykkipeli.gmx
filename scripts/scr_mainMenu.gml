switch(menuIndex){

    case 0: // Start the game
        room_goto_next();
        break;
        
    case 1: // Go to options
        room_goto(rm_optionsMenu);
        break;
        
    case 2: // Quit the game
        game_end();
        break;
        
    default: // Menu is bugged
        break;
        
}
