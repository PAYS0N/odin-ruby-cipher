# frozen_string_literal: true

module OdinRubyCipher
  # class to hold the cipher function
  class Cipher
    def caesar_cipher(string, num)
      shifted_string_arr = string.chars.map do |char|
        if char.between?("a", "z")
          ordinal = char.ord + num
          ordinal = center_value(ordinal, "a".ord, "z".ord)
          ordinal.chr
        elsif char.between?("A", "Z")
          ordinal = char.ord + num
          ordinal = center_value(ordinal, "A".ord, "Z".ord)
          ordinal.chr
        else
          char
        end
      end
      shifted_string_arr.join
    end

    def center_value(num, min, max)
      until num.between?(min, max)
        num -= 26 if num > max
        num += 26 if num < min
      end
      num
    end
  end
end
