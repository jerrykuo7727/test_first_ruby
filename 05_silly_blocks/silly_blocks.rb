def reverser 
	words = yield.split
	words.each do |word|
		word.reverse!
	end
	words.join(" ")
end

def adder(n = 1)
	yield + n
end

def repeater(n = 1)
	n.times do 
		yield
	end
end
