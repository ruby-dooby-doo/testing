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
    return dividend.to_f / divisor
  end

  def square(number)
    return number * number
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
    it 'should return the difference of two numbers' do
      calculator = Calculator.new
      result = calculator.subtract(8,5)
      expect(result).to eq(3)
    end
  end

  describe '#multiply' do
    it 'should return the product of two numbers' do
      calculator = Calculator.new
      result = calculator.multiply(8,5)
      expect(result).to eq(40)
    end
  end

  describe '#divide' do
    it 'should return the quotient of two numbers' do
      calculator = Calculator.new
      result = calculator.divide(5,10)
      expect(result).to eq(0.5)
    end
  end


  describe '#square' do
    it 'should return the square of a number' do
      calculator = Calculator.new
      result = calculator.square(4)
      expect(result).to eq(16)
    end
  end

  describe '#power' do
    it 'should return the pwer of a number' do
      calculator = Calculator.new
      result = calculator.power(4, 3)
      expect(result).to eq(64)
    end
  end
end
