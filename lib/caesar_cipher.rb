class CaesarCipher
    def caesar_cipher(clear_text, shift)
        result = ""
        clear_text.each_char do |char|
            shifted_char = char.ord + shift
            result << shifted_char.chr
        end
        return result
    end
end