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

    it 'can handle an unknown amount of numbers' do
      expect(calculator.add("1,2,3,4")).to eq 10
    end

    it 'can handle new lines between numbers' do
      expect(calculator.add("1\n2,3")).to eq 6
    end

    it 'supports different delimiters' do
      expect(calculator.add("//;\n1;2")).to eq 3
    end

    context 'when passed with negative numbers' do
      it 'throws an exception and the negative that was passed' do
        expect { calculator.add("-1") }.to raise_error "negatives not allowed: [-1]"
      end
    end
  end
end