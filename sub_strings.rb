def sub_strings(string, dictionary)
  hash = {}
  string = string.downcase.split
  string.each do |word|
    dictionary.each do |item|
      if word.include?(item)
        if hash.key?(item)
            hash[item] = hash[item] + 1
        else
            hash[item] = 1
        end
      end
    end
  end
  hash
end

puts sub_strings("Howdy partner, sit down! How's it going? go! go!", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
