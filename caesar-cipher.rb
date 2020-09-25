puts "Please enter a string to encrypt"
string = gets.chomp.split('')

puts "Please enter a shift factor"
shift_factor = gets.chomp.to_i
if shift_factor > 26 || shift_factor < -26
  shift_factor %= 26
end

output = string.map do |character| n = character.ord
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
  n.chr
end

puts "The encrypted text is:\n#{output.join('')}"