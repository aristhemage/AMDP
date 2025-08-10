// Target the player
target = obj_player;

// Record starting position
x_start = x;
y_start = y;

// Calculate horizontal and vertical speeds to arc toward player
var dx = target.x - x;
var dy = target.y - y;

// Set flight time (adjust this value for faster/slower arcs)
flight_time = 60;

// Horizontal speed
h_spd = dx / flight_time;

// Initial vertical speed (we simulate gravity manually)
v_spd = (dy / flight_time) - (0.5 * 0.5 * flight_time);

// Gravity you want to apply (tweak for different arc styles)
grav = 0.5;
