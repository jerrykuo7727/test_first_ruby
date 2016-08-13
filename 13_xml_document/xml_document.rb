class XmlDocument
  def initialize(indent=false)
    @indent = indent
    @indent_size = 0
  end

  def method_missing(name, arg=nil)
    define_singleton_method(name) do |param=nil|
      if @indent
        if param.nil? && !block_given?
          "<#{name}/>\n"
        elsif !param.nil? && !block_given?
          key, value = param.first
          "<#{name} #{key.to_s}='#{value.to_s}'/>\n"
        elsif param.nil? && block_given?
          @indent_size += 2
          result = "<#{name}>\n" + " " * @indent_size +"#{yield}" 
          @indent_size -= 2
          result << " " * @indent_size + "</#{name}>\n"
          result
        else
          key, value = param.first
          "<#{name} #{key.to_s}='#{value.to_s}'>\n#{yield}</#{name}>\n"
        end
      else
        if param.nil? && !block_given?
          "<#{name}/>"
        elsif !param.nil? && !block_given?
          key, value = param.first
          "<#{name} #{key.to_s}='#{value.to_s}'/>"
        elsif param.nil? && block_given?
          "<#{name}>#{yield}</#{name}>"
        else
          key, value = param.first
          "<#{name} #{key.to_s}='#{value.to_s}'>#{yield}</#{name}>"
        end
      end
    end
    send(name, arg)
  end
end

xml = XmlDocument.new
p xml.hello(:name => 'dolly')