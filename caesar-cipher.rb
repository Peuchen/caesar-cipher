#Ask the user to input a string
puts "Please enter a string to encrypt"
string = gets.chomp

#Ask the user to choose a shift factor
puts "Please enter a shift factor"
shift_factor = gets.chomp.to_i

#Split the sentence in separate characters
val = string.split('')

#If the shift factor exceeds 26 or -26, detract (mutiples of) 26 to keep the shift factor within the range
if shift_factor > 26 || shift_factor < -26
  shift_factor %= 26
end

#Convert the characters into numbers
#Add the shift factor to the numbers
def convert_characters(arr, shift_factor)
  output = arr.map { |c| c.ord}
#If the new number exceeds the range for the characters, detract 26 to keep it within the range
  output = output.map do |n|
    if n >= "A".ord && n <= "Z".ord
      n += shift_factor
      if n > "Z".ord
        n -= 26
      elsif n < "A".ord
        n += 26
      end
    elsif n >= "a".ord && n <= "z".ord
      n += shift_factor
      if n > "z".ord
        n -= 26
      elsif n < "a".ord
        n += 26
      end
    end
    n
  end

  #Convert the numbers back into characters
  output = output.map { |n| n.chr }
  #Join the characters back together
  output = output.join('')
  #Print the string
  puts "The encrypted text is:"
  puts output
end

convert_characters(val, shift_factor)