class Book
	attr_reader :title
	def title=(name)
		words = name.split
		delimiter = ["the", "a", "an", "and", "in", "of"]
		words.first.capitalize!
		words.each do |word|
			if ((not delimiter.include? word) || word == "i")
				word.capitalize!
			end
		end
		name = words.join(" ")
		@title = name
	end
end