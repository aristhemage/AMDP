draw_set_halign(fa_center);

var cx = room_width * 0.25;
var yy = scroll_y;

for (var i = 0; i < array_length(credits); i++)
{
    var entry = credits[i];

    switch(entry.type)
    {
		case "text":
		{
		    draw_set_font(fnt_game);
		    draw_set_valign(fa_top);

		    var final_scale = entry.scale * 0.5;

		    draw_text_transformed(
		        cx,
		        yy,
		        entry.text,
		        final_scale,
		        final_scale,
		        0
		    );

		    yy += (40 * final_scale) + 10;
		}
		break;


        case "sprite":
        {
            var spr = entry.sprite;
            var h = sprite_get_height(spr);

            draw_sprite(
                spr,
                0,
                cx,
                yy + h * 0.5
            );

            yy += h + 20;
        }
        break;


        case "space":
        {
            yy += entry.space;
        }
        break;
    }
}
