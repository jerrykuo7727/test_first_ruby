class Friend
	def greeting(who = nil)
		if (!who)
			"Hello!"
		else
			"Hello, #{who}!"
		end
	end
end