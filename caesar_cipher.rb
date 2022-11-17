def caesar_cipher(string, number) 
    alphabet = [*("a".."z")] + [*("a".."z")]
    string_array = string.split("")
    cipher_string_array = []
    
    string_array.map do |s|
      if alphabet.include?(s.downcase)
        if s == s.downcase
           cipher_index = alphabet.find_index(s) + number
           cipher_string_array.push(alphabet[cipher_index])
        else
            cipher_index = alphabet.find_index(s.downcase) + number       
            cipher_string_array.push(alphabet[cipher_index].upcase)
        end
      else
        cipher_string_array.push(s)
      end
        
    end
    cipher_string = cipher_string_array.join()
    p cipher_string
  
  end
  caesar_cipher("What a string!", 5)