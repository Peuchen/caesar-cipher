#Ask the user to input a string
string = gets.chomp
puts "You have entered the string '#{string}'"

#Ask the user to choose a shift factor
shift_factor = gets.chomp.to_i
puts "You have entered the shift factor'#{shift_factor}'"

#Split the sentence in separate characters
values = string.split('')
p values

#If the shift factor exceeds 26 or -26, detract (mutiples of) 26 to keep the shift factor within the range
def simplify_shift(shift_factor)
  if shift_factor > 26 || shift_factor < -26
    shift_factor %= 26
  end
end

#Convert the characters into numbers
convert_characters(values)

def convert_characters(arr, shift_factor)
  output = arr.map { |c| c.ord }
  p output

#If the new number exceeds the range for the characters, add or detract (multiples of) 26 to keep it within the range
#Add the shift factor to the numbers
end
#Convert the numbers back into characters
#Join the characters back together
#Print the string