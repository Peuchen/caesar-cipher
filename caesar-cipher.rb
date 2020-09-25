puts "Please enter a string to encrypt"
string = gets.chomp

puts "Please enter a shift factor"
shift_factor = gets.chomp.to_i

val = string.split('')

if shift_factor > 26 || shift_factor < -26
  shift_factor %= 26
end

def convert_characters(arr, shift_factor)
  output = arr.map { |c| c.ord}
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

  output = output.map { |n| n.chr }
  output = output.join('')
  puts "The encrypted text is:"
  puts output
end

convert_characters(val, shift_factor)