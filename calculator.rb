require 'rspec'

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def sqaure(number)
    return square * square
  end

  def power(number, exponent)
    return number ** exponent
  end
end


# driver code

# calculator = Calculator.new

# if calculator.add(2,3) == 5
#   p "Test passes"
# else
#   p "Test fails"
# end

# which class you're testing
RSpec.describe Calculator do
  # which method you're testing
  describe '#add' do
    # actually put the code to test
    it 'should return the sum of two numbers' do
      calculator = Calculator.new
      result = calculator.add(2,3)
      expect(result).to eq(5)
    end

    it 'should return the sum of two negative numbers' do
      calculator = Calculator.new
      result = calculator.add(-5,-2)
      expect(result).to eq(-7)
    end
  end

  describe '#subtract' do
  end
end
