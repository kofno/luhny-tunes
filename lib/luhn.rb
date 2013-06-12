class Luhn

  attr_reader :number

  def initialize number
    @number = number.to_i
  end

  def valid?
    luhn_sum.modulo(10) == 0
  end

  private

  def luhn_sum
    number.digits.reverse.each_slice(2).reduce(0) { |sum, (fst,snd)|
      sum += fst
      sum += (2*snd).digits.reduce(:+) if snd
      sum
    }
  end

end

class Fixnum

  def digits
    self.to_s.chars.map(&:to_i)
  end
end
