# frozen_string_literal: true

require_relative("../lib/cipher")

describe OdinRubyCipher::Cipher do
  context "when using the cipher" do
    subject(:cipher) { described_class.new }

    it "returns empty string when not given string" do
      string = ""
      expect(cipher.caesar_cipher(string, 5)).to eq("")
    end

    it "returns correct value for only letters" do
      string = "Hello"
      shift = 5
      answer = "Mjqqt"
      expect(cipher.caesar_cipher(string, shift)).to eq(answer)
    end

    it "returns correct string when given punctuation" do
      string = "Hello to The Odin Project!"
      shift = 17
      answer = "Yvccf kf Kyv Fuze Gifavtk!"
      expect(cipher.caesar_cipher(string, shift)).to eq(answer)
    end

    it "returns correct string when given negative shift" do
      string = "Hello to The Odin Project!"
      shift = -5
      answer = "Czggj oj Ocz Jydi Kmjezxo!"
      expect(cipher.caesar_cipher(string, shift)).to eq(answer)
    end

    it "returns correct string when given only punctuation" do
      string = "45@%35$%*^@#$%$##\\\\#!"
      shift = -5
      answer = "45@%35$%*^@#$%$##\\\\#!"
      expect(cipher.caesar_cipher(string, shift)).to eq(answer)
    end
  end
end
