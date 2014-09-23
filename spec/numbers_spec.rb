require "numbers"

describe Numbers do

  describe "#factorial" do

    it "should factorialize the number" do
      n = Numbers.new
      expect(n.factorial(10)).to eq(3628800)
    end

    it "should return the value of 1 when called for zero" do
      n = Numbers.new
      expect(n.factorial(0)).to eq(1)
    end

    it "should raise an error when called for a negative number" do
      n = Numbers.new
      expect {n.factorial(-10)}.to raise_error(TypeError)
    end

    it "should raise an error when called for a non-integer" do
      n = Numbers.new
      expect {n.factorial("abc")}.to raise_error(TypeError)
    end

  end

  describe "#sum_of_digits" do

    it "should add all of the digits" do
      n = Numbers.new
      expect(n.sum_of_digits(123)).to eq(6)
    end

    it "should raise an error when called for a negative number" do
      n = Numbers.new
      expect {n.sum_of_digits(-10)}.to raise_error(TypeError)
    end

    it "should raise an error when called for a non-integer" do
      n = Numbers.new
      expect {n.sum_of_digits("abc")}.to raise_error(TypeError)
    end

  end

  describe "#factorial_sum_digits" do

    it "should factorial and sum the digits correctly" do
      n = Numbers.new
      expect(n.factorial_sum_digits(3)).to eq(6)
    end

    it "uses #factorial and #sum_of_digits" do
      n = Numbers.new
      n.should_receive(:factorial).with(22).and_return 99
      n.should_receive(:sum_of_digits)
      n.factorial_sum_digits(22)
    end

    it "sums the digits" do
      n = Numbers.new
      n.stub(:factorial).and_return 111
      expect(n.factorial_sum_digits(22)).to eq 3
    end

  end

end
