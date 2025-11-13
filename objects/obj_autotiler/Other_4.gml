// Not create, as I want to load it LAST
with(obj_wall_basic){
    var tile_sz = 32;
    var rand_chance = 10;
    var lay_id = layer_get_id("Tileset");
    var map_id = layer_tilemap_get_id(lay_id);

    // Top left
    var data = tile_set_index(map_id, (irandom(rand_chance) == 0) ? 3 : 6);
    tilemap_set_at_pixel(map_id, data, bbox_left, bbox_top);

    // Top right
    var data = tile_set_index(map_id, (irandom(rand_chance) == 0) ? 5 : 2);
    tilemap_set_at_pixel(map_id, data, bbox_right - tile_sz, bbox_top);

    // Bottom left
    var data = tile_set_index(map_id, (irandom(rand_chance) == 0) ? 17 : 14);
    tilemap_set_at_pixel(map_id, data, bbox_left, bbox_bottom - tile_sz);

    // Bottom right
    var data = tile_set_index(map_id, (irandom(rand_chance) == 0) ? 19 : 16);
    tilemap_set_at_pixel(map_id, data, bbox_right - tile_sz, bbox_bottom - tile_sz);

    // Top middle
    var tiles_w = ceil(sprite_width / tile_sz);
    for (i = 1; i < tiles_w - 1; i++) {
        var data = tile_set_index(map_id, (irandom(rand_chance) == 0) ? 4 : 1);
        tilemap_set_at_pixel(map_id, data, bbox_left + i * tile_sz, bbox_top);
    }

    // Bottom middle
    for (i = 1; i < tiles_w - 1; i++) {
        var data = tile_set_index(map_id, (irandom(rand_chance) == 0) ? 18 : 15);
        tilemap_set_at_pixel(map_id, data, bbox_left + i * tile_sz, bbox_bottom - tile_sz);
    }

    // Left side
    var tiles_h = ceil(sprite_height / tile_sz);
    for (i = 1; i < tiles_h - 1; i++) {
        var data = tile_set_index(map_id, (irandom(rand_chance) == 0) ? 10 : 7);
        tilemap_set_at_pixel(map_id, data, bbox_left, bbox_top + i * tile_sz);
    }

    // Right side
    for (i = 1; i < tiles_h - 1; i++) {
        var data = tile_set_index(map_id, (irandom(rand_chance) == 0) ? 12 : 9);
        tilemap_set_at_pixel(map_id, data, bbox_right - tile_sz, bbox_top + i * tile_sz);
    }
}
