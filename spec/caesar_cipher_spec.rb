require 'caesar_cipher'

RSpec.describe CaesarCipher do
    it "shifts a letter by one" do
        caesar_cipher = CaesarCipher.new
        expect(caesar_cipher.caesar_cipher("a" , 1)).to eq("b")
    end
end

