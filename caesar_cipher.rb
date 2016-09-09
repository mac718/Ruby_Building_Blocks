def caeser_cipher(text, shift)
	text_array = text.split(" ")
	text_array.each do |word|
		
		count = 0
		
		while count < word.length 
			if ((word[count].ord > 85 && word[count].ord <= 90) || word[count].ord > 117) && word[count] =~ /\w/
				word[count] = (word[count].ord - 21).chr
			elsif  word[count] =~ /\w/
				word[count] = (word[count].ord + 5).chr
			end
		count += 1
		end
	end

puts text_array.join(" ")
 
end

caeser_cipher("What a string!", 5)