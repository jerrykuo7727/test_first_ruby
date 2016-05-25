def measure(n = false)
	if(!n)
		t1 = Time.now
		yield
		t2 = Time.now
		delta = t2 - t1
	else
		t1 = Time.now
		n.times do
			yield
		end
		t2 = Time.now
		delta = t2 - t1
		avg = delta / n
	end

end