def caesar_cipher(string, num)
  shifted_string_arr = string.split('').map do |char|
    if char.between?('a', 'z')
      ordinal = char.ord + num
      ordinal -= 26 while ordinal > 'z'.ord
      ordinal.chr
    elsif char.between?('A', 'Z')
      ordinal = char.ord + num
      ordinal -= 26 while ordinal > 'Z'.ord
      ordinal.chr
    else
      char
    end
  end
  shifted_string_arr.join('')
end

puts caesar_cipher('Hello to The Odin Project!', 17)
