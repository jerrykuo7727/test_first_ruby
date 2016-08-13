class RPNCalculator
  def initialize
    @stack = []
  end

  def push(num)
    @stack << num
  end

  def plus
    raise "calculator is empty" if @stack.empty? 
    num2 = @stack.pop
    num1 = @stack.pop
    @stack << num1 + num2
  end

  def minus
    raise "calculator is empty" if @stack.empty? 
    num2 = @stack.pop
    num1 = @stack.pop
    @stack << num1 - num2
  end

  def times
    raise "calculator is empty" if @stack.empty? 
    num2 = @stack.pop
    num1 = @stack.pop
    @stack << 1.0 * num1 * num2
  end

  def divide
    raise "calculator is empty" if @stack.empty? 
    num2 = @stack.pop
    num1 = @stack.pop
    @stack << 1.0 * num1 / num2
  end

  def value
    @stack.last
  end

  def tokens(formula)
    tokens = []
    formula.split(" ").each do |e|
      token = case e
              when '+' then :+
              when '-' then :-
              when '*' then :*
              when '/' then :/
              else e.to_i
              end
      tokens << token
    end
    tokens
  end

  def evaluate(formula)
    @value = nil
    @stack = []
    tokens = self.tokens(formula)
    until tokens.empty?
      token = tokens.shift
      case token
      when :+ then self.plus
      when :- then self.minus
      when :* then self.times
      when :/ then self.divide
      else self.push(token)
      end
    end
    self.value
  end
end