require 'rspec'

class FizzBuzz
  def output(number)
    if number % 3 == 0 && number % 5 == 0
      return 'fizz_buzz'
    elsif number % 3 == 0
      return 'fizz'
    elsif number % 5 == 0
      return 'buzz'
    else
      return number
    end
  end
end

RSpec.describe FizzBuzz do
  describe '#output' do
    it 'should return 1 when given 1' do
      fizz_buzz = FizzBuzz.new
      expect(fizz_buzz.output(1)).to eq(1)
    end

    it 'should return 2 when given 2' do
      fizz_buzz = FizzBuzz.new
      expect(fizz_buzz.output(2)).to eq(2)
    end

    it 'should return \'fizz\' when given 3' do
      fizz_buzz = FizzBuzz.new
      expect(fizz_buzz.output(3)).to eq('fizz')
    end


    it 'should return \'buzz\' when given 5' do
      fizz_buzz = FizzBuzz.new
      expect(fizz_buzz.output(5)).to eq('buzz')
    end


    it 'should return \'fizz_buzz\' when given 15' do
      fizz_buzz = FizzBuzz.new
      expect(fizz_buzz.output(15)).to eq('fizz_buzz')
    end
  end
end
