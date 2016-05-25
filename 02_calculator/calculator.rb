def add(a, b)
	a + b
end

def subtract(a, b)
	a - b
end

def sum(arr)
	sum = 0
	arr.each do |e|
		sum += e
	end
	sum
end

def multiply(*nums)
	result = 1
	nums.each do |num|
		result *= num
	end
	result
end

def power(a, b)
	a ** b
end

def factorial(n)
	if n == 0
		1
	else
		n * factorial(n-1)
	end
end