require 'test/unit'
require_relative '../lib/luhn'

class FixnumExtTest < Test::Unit::TestCase

  def test_digits
    assert_equal [7,8,9], 789.digits
  end

end

class LuhnTest < Test::Unit::TestCase

  def test_validity
    a = Luhn.new 79927398713
    assert a.valid?

    b = Luhn.new 79927398710
    refute b.valid?
  end
end
