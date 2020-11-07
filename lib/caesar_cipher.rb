# frozen_string_literal: true

class CaesarCipher
  ALPHABET_WRAP = 26

  def caesar_cipher(clear_text, shift)
    result = +''
    clear_text.each_char do |character|
      result << shift_within_alphabet(character, shift)
    end
    result
  end

  def shift_within_alphabet(character, shift)
    shifted_ordinal = character.ord + shift
    shifted_ordinal -= ALPHABET_WRAP if shifted_ordinal > 'z'.ord
    shifted_ordinal.chr
  end
end
