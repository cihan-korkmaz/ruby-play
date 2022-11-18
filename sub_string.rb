def substring(string, dict)
    string = string.downcase
    string_length = string.size
    result_hash = {}
    dict.each do |word|
      word_length = word.size
      word_count = 0
      for i in 0..(string_length - word_length) do
        string_part = string[i..(i + word_length - 1)]
        if string_part == word
          word_count += 1
        end
      end
      if word_count > 0
        result_hash[word] = word_count
      end
    end
    result_hash
  end
  
  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  input_string = "Howdy partner, sit down! How's it going?"
  p substring(input_string, dictionary)