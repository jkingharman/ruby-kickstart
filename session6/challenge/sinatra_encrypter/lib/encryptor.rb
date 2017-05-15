

module Encryptor

def create_cipher
  cipher_lower = Hash[('a'..'w').to_a.zip(('d'..'z').to_a)]
  cipher_lower["x"] = "a"; cipher_lower["y"] = "b"; cipher_lower["z"] = "c"
  cipher_upper = Hash[('A'..'W').to_a.zip(('D'..'Z').to_a)]
  cipher_upper["X"] = "A"; cipher_lower["Y"] = "B"; cipher_lower["Z"] = "C"
  combo_cipher = cipher_lower.merge(cipher_upper)
  combo_cipher[" "] = " "
  combo_cipher
end

def encrypt(message)
  cipher = create_cipher
  message.chars.map {|letter| cipher[letter]}.join('')
end

def decrypt(message)
  cipher = create_cipher.invert
  message.chars.map {|letter| cipher[letter]}.join('')
end

end
