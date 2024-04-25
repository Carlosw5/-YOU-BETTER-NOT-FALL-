switch (room)
{
case rm_start:
    draw_set_halign(fa_center);
    var c = c_purple;
    draw_text_transformed_colour(room_width / 2, 300, "YOU BETTER NOT FALL!", 3, 3, 0, c, c, c, c, 1);
    draw_text(room_width / 2, 400, 
    @"IF YOU FALL YOU DIE!!!!
    
    |>>PRESS ENTER TO START<<|");
    draw_set_halign(fa_left);
    break;

case rm_start:
    draw_text(20, 20, "SCORE: " + string(score));
    draw_text(20, 40, "LIVES: " + string(lives));
    break;

case rm_win:
    draw_set_halign(fa_center);
    var c = c_purple;
    draw_text_transformed_colour(room_width / 2, 300, "YOU DIDN'T FALL!", 3, 3, 0, c, c, c, c, 1);
    draw_text(room_width / 2, 400, 
    @"CONGRATULATIONS!!!!
    
    ");
    draw_set_halign(fa_left);
    break;

}