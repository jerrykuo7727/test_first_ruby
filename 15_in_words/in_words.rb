class Fixnum
  def in_words
    case self
    when 0  then 'zero'
    when 1  then 'one'
    when 2  then 'two'
    when 3  then 'three'
    when 4  then 'four'
    when 5  then 'five'
    when 6  then 'six'
    when 7  then 'seven'
    when 8  then 'eight'
    when 9  then 'nine'
    when 10 then 'ten'
    when 11 then 'eleven'
    when 12 then 'twelve'
    when 13 then 'thirteen'
    when 14 then 'fourteen'
    when 15 then 'fifteen'
    when 16 then 'sixteen'
    when 17 then 'seventeen'
    when 18 then 'eighteen'
    when 19 then 'nineteen'
    when 20 then 'twenty'
    when 30 then 'thirty'
    when 40 then 'forty'
    when 50 then 'fifty'
    when 60 then 'sixty'
    when 70 then 'seventy'
    when 80 then 'eighty'
    when 90 then 'ninety'
    else
      if self % 10 ** 12 == 0
        (self / 10 ** 12).in_words + " trillion"
      elsif self > 10 ** 12
        (self - self % 10 ** 12).in_words + " " + (self % 10 ** 12).in_words
      elsif self % 10 ** 9 == 0
        (self / 10 ** 9).in_words + " billion"
      elsif self > 10 ** 9
        (self - self % 10 ** 9).in_words + " " + (self % 10 ** 9).in_words
      elsif self % 10 ** 6 == 0
        (self / 10 ** 6).in_words + " million"
      elsif self > 10 ** 6
        (self - self % 10 ** 6).in_words + " " + (self % 10 ** 6).in_words
      elsif self % 1000 == 0
        (self / 1000).in_words + " thousand"
      elsif self > 1000
        (self - self % 1000).in_words + " " + (self % 1000).in_words
      elsif self % 100 == 0
        (self / 100).in_words + " hundred"
      elsif self > 100
        (self - self % 100).in_words + " " + (self % 100).in_words
      else
        (self - self % 10).in_words + " " + (self % 10).in_words
      end
    end
  end
end