def substrings(string, valid_substrings_array)
    word_array = string.split(" ")
    hash = {}
    hash.default = 0
    valid_substrings_array.each do |valid_substring|
        word_array.each do |word|
            if word.include?(valid_substring)
                hash[valid_substring] += 1
            end
        end
    end
    hash
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
puts substrings("Howdy partner, sit down! How's it going?", dictionary)