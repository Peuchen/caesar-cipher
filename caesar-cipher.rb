#Ask the user to input a string
string = gets.chomp
#Ask the user to choose a shift factor
shift_factor = gets.chomp.to_i
#Split the sentence in separate characters
#Convert the characters into numbers
#Add the shift factor to the numbers
#If the new number exceeds the range for the characters, add or detract (multiples of) 26 to keep it within the range
#Convert the numbers back into characters
#Join the characters back together
#Print the string