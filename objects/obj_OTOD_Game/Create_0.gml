paused = false;
paused_surf = -1;


options = [sng_coldRise,sng_hauseGuest,sng_flyHigh,sng_peridot,sng_firstToLast];
isSongPlaying = false;
choice = irandom(array_length(options)-1);
lastPlayed = choice;

playMusic = true;
NumbersEnabled = true;

TIDs = [-1,-1,-1,-1]; //Tower IDS


ini_open("SaveData.ini");
musicVolume = ini_read_real("Sounds","Music",35);
sfxVolume = ini_read_real("Sounds","SFX",35);

easyWins = ini_read_real("Wins","E",0);
mediumWins = ini_read_real("Wins","M",0);
hardWins = ini_read_real("Wins","H",0);
ini_close();


difficulty = -1;

