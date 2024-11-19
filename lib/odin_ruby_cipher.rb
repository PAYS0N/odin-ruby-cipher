# frozen_string_literal: true

require_relative("cipher")

cipher = OdinRubyCipher::Cipher.new
puts cipher.caesar_cipher("Hello to The Odin Project!", -21)
