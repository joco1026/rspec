require "divisible"

describe Divisible do

  it "should determine whether a number is even?" do
    expect(Divisible.is_even?(2)).to be_truthy
  end

end
