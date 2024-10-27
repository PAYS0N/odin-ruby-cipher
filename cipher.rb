def caesar_cipher(string, num)
  shifted_string_arr = string.split('').map() do |char| 
    if char.between?('a', 'z')
      ordinal = char.ord+num
      while ordinal > 'z'.ord
        ordinal -= 26
      end
      ordinal.chr
    elsif char.between?('A', 'Z')
      ordinal = char.ord+num
      while ordinal > 'Z'.ord
        ordinal -= 26
      end
      ordinal.chr
    else
      char
    end
  end
  shifted_string = shifted_string_arr.join('')
  return shifted_string
end

puts caesar_cipher("Hello to The Odin Project!", 17)