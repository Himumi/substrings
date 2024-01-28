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

# Use scan and reduce method

def sub_strings_scan(string, dictionary)
  dictionary.reduce(Hash.new(0)) do |hash, item|
    count = string.downcase.scan(item).size
    hash[item] = count if count > 0
    hash
  end
end

puts sub_strings_scan("Howdy partner, sit down! How's it going? go! go!", ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"])
# return {"down"=>1, "go"=>3, "going"=>1, "how"=>2, "howdy"=>1, "it"=>2, "i"=>3, "own"=>1, "part"=>1, "partner"=>1, "sit"=>1}