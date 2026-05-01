// Credits to Cecil for this.
function scr_fizzle_destroy(_inst, _chunk = 4, _layer = "Particles") {

    var _spr = _inst.sprite_index;
    var _img = _inst.image_index;

    var _w = sprite_get_width(_spr);
    var _h = sprite_get_height(_spr);

    var _xscale = _inst.image_xscale;
    var _yscale = _inst.image_yscale;

    var _xoff = _inst.sprite_xoffset/2;
    var _yoff = _inst.sprite_yoffset/2;

    for (var xx = 0; xx < _w; xx += _chunk) {
        for (var yy = 0; yy < _h; yy += _chunk) {

            var p = instance_create_layer(_inst.x, _inst.y, _layer, obj_fizzle_piece);

            p.sprite_index = _spr;
            p.image_index = _img;

            p.src_x = xx;
            p.src_y = yy;
            p.src_w = _chunk;
            p.src_h = _chunk;


            var local_x = (xx - _xoff) * _xscale;
            var local_y = (yy - _yoff) * _yscale;

            p.x = _inst.x + local_x;
            p.y = _inst.y + local_y;
        }
    }

    with (_inst) instance_destroy();
}