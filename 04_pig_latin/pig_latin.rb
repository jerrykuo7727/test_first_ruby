def translate(words)
	vowels = ["a", "e", "i", "o", "u"]
	arr = words.split
	arr.each do |word|
		loop do
			if (word[0..1] == "qu")
				word << "qu"
				word[0..1] = ''
			elsif (vowels.include? word[0])
				word << "ay"
				break
			else
				word << word[0]
				word[0] = ''
			end
		end
	end
	arr.join(" ")
end