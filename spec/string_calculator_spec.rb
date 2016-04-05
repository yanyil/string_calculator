require 'string_calculator'

describe StringCalculator do
  subject(:calculator) { described_class.new }

  describe '#add' do
    it 'returns 0 for an empty string' do
      expect(calculator.add("")).to eq 0
    end

    it 'returns the same number for 1 number' do
      expect(calculator.add("1")).to eq 1
    end

    it 'returns their sum for 2 numbers' do
      expect(calculator.add("1,2")).to eq 3
    end
  end
end