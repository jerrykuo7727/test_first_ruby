class Dictionary
  def initialize
    @dictionary = {}
  end

  def entries
    @dictionary
  end

  def add(param)
    if param.is_a?(Hash)
      @dictionary.merge!(param)
    elsif param.is_a?(String)
      @dictionary[param] = nil
    end
  end

  def keywords
    @dictionary.keys.sort
  end

  def include?(keyword)
    keywords.include?(keyword)
  end

  def find(keyword)
    return {} if @dictionary.empty?
    result = {}
    @dictionary.each do |key, value|
      result[key] = value if key.include?(keyword)
    end
    result
  end

  def printable
    result = ""
    keywords.each do |keyword|
      result << %Q{[#{keyword}] "#{@dictionary[keyword]}"\n}
    end
    result.chomp
  end
end
puts %Q{[apple] "fruit"\n[fish] "aquatic animal"\n[zebra] "African land animal with stripes"}