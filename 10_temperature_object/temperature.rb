class Temperature
	def initialize(temp={})
		@f = temp.fetch(:f, nil)
		@c = temp.fetch(:c, nil)

		if (@f)
			@c = 1.0 * (@f - 32) * 5 / 9
		end
		if (@c)
			@f = 1.0 * @c * 9 / 5 + 32
		end
	end

	def in_fahrenheit
		@f
	end

	def in_celsius
		@c
	end

	def Temperature.from_celsius(temp)
		Temperature.new({c: temp})
	end

	def Temperature.from_fahrenheit(temp)
		Temperature.new({f: temp})
	end

	def Temperature.in_celsius
		@@c
	end

	def Temperature.in_fahrenheit
		@@f
	end
end

class Celsius < Temperature
	def initialize(temp)
		@c = temp
		@f = 1.0 * @c * 9 / 5 + 32
	end
end

class Fahrenheit < Temperature
	def initialize(temp)
		@f = temp
		@c = 1.0 * (@f - 32) * 5 / 9
	end
end