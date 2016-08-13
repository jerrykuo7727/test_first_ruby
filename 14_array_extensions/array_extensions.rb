class Array
  def sum
    return 0 if self.empty?
    self.inject { |sum, e| sum + e }
  end

  def square
    return self if self.empty?
    self.map { |e| e ** 2 }
  end

  def square!
    self.map! { |e| e ** 2 }
  end
end