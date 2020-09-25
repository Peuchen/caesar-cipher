#Ask the user to input a string
string = gets.chomp
puts "You have entered the string '#{string}'"

#Ask the user to choose a shift factor
shift_factor = gets.chomp.to_i
puts "You have entered the shift factor'#{shift_factor}'"

#Split the sentence in separate characters
values = string.split('')
p values
#Convert the characters into numbers
convert_characters(values)

def convert_characters(arr)
  output = arr.map { |c| c.ord }
  p output
end

#Add the shift factor to the numbers
#If the new number exceeds the range for the characters, add or detract (multiples of) 26 to keep it within the range
#Convert the numbers back into characters
#Join the characters back together
#Print the string