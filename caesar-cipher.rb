#Ask the user to input a string
string = gets.chomp
puts "You have entered the string '#{string}'"

#Ask the user to choose a shift factor
shift_factor = gets.chomp.to_i
puts "You have entered the shift factor'#{shift_factor}'"

#Split the sentence in separate characters
val = string.split('')
p val

#If the shift factor exceeds 26 or -26, detract (mutiples of) 26 to keep the shift factor within the range
if shift_factor > 26 || shift_factor < -26
  shift_factor %= 26
end

puts "The revised shift factor is #{shift_factor}"

#Convert the characters into numbers
#Add the shift factor to the numbers
def convert_characters(arr, shift_factor)
  output = arr.map { |c| c.ord}
  p "Before conversion:"
  p output
#If the new number exceeds the range for the characters, detract 26 to keep it within the range
  output = output.map do |n|
    if n >= "A".ord && n <= "Z".ord
      n += shift_factor
      if n > "Z".ord
        n -= 26
      end
    elsif n >= "a".ord && n <= "z".ord
      n += shift_factor
      if n > "z".ord
        n -= 26
      end
    end
    n
  end

  p "After conversion:"
  p output

  #Convert the numbers back into characters
  output = output.map { |n| n.chr }
  #Join the characters back together
  output = output.join('')
  #Print the string
  puts output
end

convert_characters(val, shift_factor)