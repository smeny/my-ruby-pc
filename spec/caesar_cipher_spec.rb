require 'caesar_cipher'

RSpec.describe "#caesar_cipher" do
    let(:caesar_cipher) { CaesarCipher.new }

    it "shifts a letter by one" do
        expect(caesar_cipher.caesar_cipher("a" , 1)).to eq("b")
    end

    it "shifts a letter by five" do
        expect(caesar_cipher.caesar_cipher("a" , 5)).to eq("f")
    end

    it "keeps case after shift" do
        expect(caesar_cipher.caesar_cipher("A" , 1)).to eq("B")
    end

    it "wraps after lowercase letter z" do
        expect(caesar_cipher.caesar_cipher("z" , 3)).to eq("c")
    end
end

