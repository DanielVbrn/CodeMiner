def caesar_cipher(text, shift)
    shifted_text = ""
    
    text.each_char do |char|
      if letter?(char)
        shifted_char = shift_letter(char, shift)
        shifted_text << shifted_char
      else
        shifted_text << char
      end
    end
    
    shifted_text
  end
  
  def letter?(char)
    char.match?(/[a-z]/i)
  end
  
  def shift_letter(char, shift)
    ascii_offset = char.match?(/[A-Z]/) ? 65 : 97
    shifted_code = ((char.ord - ascii_offset + shift) % 26) + ascii_offset
    shifted_code.chr
  end
  
  plaintext = "Hello, World!"
  shift = 5
  ciphertext = caesar_cipher(plaintext, shift)
  puts ciphertext