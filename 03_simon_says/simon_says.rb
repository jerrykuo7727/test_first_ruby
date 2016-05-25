def echo(input)
	input
end

def shout(input)
	input.upcase
end

def repeat(input, t = 2)
	result = ""
	(1..t).each do |n|
		result += input + " "
	end
	result[0..result.length - 2]
end

def start_of_word(input, n)
	input[0...n]
end

def first_word(input)
	input.split.first
end

def titleize(input)
	little_words = ["the", "and", "a", "an", "over"]
	inputs = input.split
	inputs.each do |input|
		unless (little_words.include? input.downcase)
			input.capitalize!
		end
	end
	inputs.first.capitalize!
	inputs.join(" ")
end