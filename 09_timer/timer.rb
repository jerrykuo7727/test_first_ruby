class Timer
	attr_accessor :seconds
	def initialize
		@seconds = 0
	end
	def time_string
		time = @seconds
		hour = time / 3600
		time = time % 3600
		minute = time / 60
		second = time % 60
		"%02d:%02d:%02d" % [hour, minute, second]
	end
end