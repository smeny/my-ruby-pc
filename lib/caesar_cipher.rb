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
    if character.ord >= 'a'.ord
      shift_from_reference_letter(character, shift, 'a')
    else
      shift_from_reference_letter(character, shift, 'A')
    end
  end

  def shift_from_reference_letter(character, shift, reference)
    wrapped_shift = (character.ord - reference.ord + shift) % ALPHABET_WRAP
    (reference.ord + wrapped_shift).chr
  end
end
