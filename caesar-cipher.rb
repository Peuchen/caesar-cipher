def ask_string
  puts "Please enter a string to encrypt"
  string = $stdin.gets.chomp.split('')
end

def ask_shift_factor
  puts "Please enter a shift factor"
  shift_factor = $stdin.gets.chomp.to_i
end

def modulo_shift_factor(shift_factor)
  if shift_factor > 26 || shift_factor < -26
    shift_factor %= 26
  end
  shift_factor
end

def encrypt(string, shift_factor)
  shift_factor = modulo_shift_factor(shift_factor)
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
  output.join
end

#puts "The encrypted text is:\n#{encrypt(ask_string, ask_shift_factor)}"