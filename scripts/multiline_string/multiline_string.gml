function multiline_string(str) {
  var newStr = "";         // The final multiline string
  var charCount = 0;       // Current number of characters in the current line
  //var capitalizeNext = true; // Whether the next character should be capitalized
  var maxChar = 20; //How many characters per line.
  
  // Loop through each character in the input string
  for (var i = 1; i <= string_length(str); i++) {
    var currentChar = string_char_at(str, i); // Current character
    
    // If capitalizeNext is true, capitalize the current character
	////UNUSED BECAUSE IT LOOKS STUPID BUT I DON'T WANT TO DELETE THIS JUST INCASE
	/*
    if (capitalizeNext && currentChar != " ") {
      newStr += string_upper(string_char_at(str, i));
      capitalizeNext = false;
    } else {
      newStr += currentChar;
    }
    */
	newStr += currentChar;
    charCount++; // Increment the character count
    
    // If we've reached the maximum line length, and the next character is a space,
    // start a new line and reset the character count. Also set capitalizeNext to true
    if (charCount >= maxChar) {
      if (currentChar == " " && i != string_length(str)) {
        newStr += "\n";
        charCount = 0;
       // capitalizeNext = true;
      }
    }
  }
  
  return newStr; // Return the final multiline string
}
