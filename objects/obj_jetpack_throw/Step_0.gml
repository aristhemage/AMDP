// Move the projectile
x += h_spd;
y += v_spd;
image_angle += 15;
// Apply gravity
v_spd += grav;

// Check for collision with player
if (place_meeting(x, y, obj_player)) {
    instance_destroy();
}
