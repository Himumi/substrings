def sub_strings(string, dictionary)
  hash = {}
  string.downcase.split.each do |word|
    dictionary.each do |item|
        hash[item] = hash.key?(item) ? hash[item] + 1 : 1 if word.include?(item)
    end
  end
  hash
end

puts sub_strings("Howdy partner, sit down! How's it going? go! go!", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
# return {"how"=>2, "howdy"=>1, "part"=>1, "partner"=>1, "it"=>2, "i"=>3, "sit"=>1, "down"=>1, "own"=>1, "go"=>3, "going"=>1}