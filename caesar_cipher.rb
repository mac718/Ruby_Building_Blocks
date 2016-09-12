def caeser_cipher(text, shift)

	#Splits the words in the string into an array
	text_array = text.split(" ")

	#Iterates through each character of each word, determines whether its ASCII identity corresponds to a letter, 
	#shifts the ASCII identity accordinlgy, and then converts ASCII ID back to its corresponding letter 
	text_array.each do |word|
		
		count = 0
		
		while count < word.length 
			if ((word[count].ord + shift > 90 && word[count].ord + shift < 97) && word[count] =~ /\w/) ||
				(word[count].ord + shift > 122 && word[count] =~ /\w/)
				word[count] = ((word[count].ord + shift) - 26).chr
			elsif  word[count] =~ /\w/
				word[count] = (word[count].ord + shift).chr
			end
		count += 1
		end
	end

puts text_array.join(" ")
 
end

caeser_cipher("What a string!", 5)