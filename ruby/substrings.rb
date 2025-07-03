dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

input = "Howdy howdy partner, sit down! How's it going?"

def substring(string, dictionary)
  dictionary.reduce({}) do |result, dict_word|
    count = string.downcase.scan(dict_word).length
    result[dict_word] = count
    result
  end
end

puts substring(input, dictionary)