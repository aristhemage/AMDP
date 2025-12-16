// Get player position
var px = obj_player.x;
var py = obj_player.y;

// Find closest boss to the player
var boss = instance_nearest(px, py, obj_core_4_boss);

// Move master to that boss
if (boss != noone)
{
    x = boss.x;
    y = boss.y;
}
