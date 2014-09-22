require "numbers"

describe Numbers do

  describe "#factorial" do

    it "should factorialize the number" do
      n = Numbers.new(10)
      expect(n.factorial).to eq(3628800)
    end

    it "should return the value of 1 when called for zero" do
      n = Numbers.new(0)
      expect(n.factorial).to eq(1)
    end

  end

  describe "#sum_of_digits" do

    it "should add all of the digits" do
      n = Numbers.new(123)
      expect(n.sum_of_digits(n.number)).to eq(6)
    end
  end

  # describe "#initialize" do

  #   it "should return an error if the input is not an integer" do
  #   end

  #   it "should be nil if a negative number is entered"
  #     n = Numbers.new(-2)
  #     expect(n.number).to eq(nil)
  #   end
  # end


end
