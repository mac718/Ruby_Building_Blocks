def substrings(words, dictionary)
	subs_n_count = Hash.new(0)

	words_array = words.split(" ")

	words_array.each do |word|
		dictionary.each do |entry|
			if word.include? entry
				subs_n_count[entry] += 1
			end
		end
	end

subs_n_count
end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substrings("Howdy partner, sit down! How's it going?", dictionary)