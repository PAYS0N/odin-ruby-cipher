# frozen_string_literal: true

require_relative("../lib/cipher")

describe OdinRubyCipher::Cipher do
  context "when using the cipher" do
    subject(:cipher) { described_class.new }

    it "returns empty string when not given string" do
      string = ""
      expect(cipher.caesar_cipher(string, 5)).to eq("")
    end
  end
end
