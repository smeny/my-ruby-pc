class CaesarCipher
    ALPHABET_WRAP = 26.freeze

    def caesar_cipher(clear_text, shift)
        result = ""
        clear_text.each_char do |character|
            result << shift_within_alphabet(character, shift)
        end
        return result
    end

    def shift_within_alphabet(character, shift)
        shifted_ordinal = character.ord + shift
        if (shifted_ordinal > "z".ord)
            shifted_ordinal -= ALPHABET_WRAP
        end
        return shifted_ordinal.chr
    end
end
