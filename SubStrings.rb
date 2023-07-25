dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
string = "Howdy partner, sit down! How's it going?"

def substrings(string, dictionary)
    string = string.downcase
    count = string.split('').reduccre(Hash.new(0)) do |object, word|
        dictionary.each {|element| object[element] += if word.inlude?(element)}
        object
    end
    return count
end

result = substrings(string, dictionary)
puts result
