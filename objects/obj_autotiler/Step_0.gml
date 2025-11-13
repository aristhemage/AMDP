// Repeat for every wall in the room
// Go to the top right of wall, tile corner sprite  Each tile is 32 pixels by 32 pixels, (192,0 to 223, 31), sometimes cracked version (96,0 to 127,31)
// Repeat top half until reach edge of obj_wall Second tile first row, cracked version 5th tile, first row
// Fill in the other corner tile, 3rd collum 1st row, cracked is 6th collum, 1st row
// Then go down with right side tile, 3rd collum, second row, cracked is 6th collum, 2nd row
// Then bottom right corner, 3rd collum, 3rd row, cracked is 6th collum, 3rd row
// Then bottom half, 2nd colum, 3rd row, cracked is 5th colum 3rd row
// Then bottom left corner, 1st collum, 3rd row, cracked is 4th collum 3rd row
// Finally the left side all the way back up, 1st collum, 2nd row, cracked is 4th collum, 2nd row

