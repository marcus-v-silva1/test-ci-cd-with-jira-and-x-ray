require "rails_helper"

RSpec.describe SumService do
  it "returns the sum of two numbers" do
    expect(SumService.call(2, 3)).to eq(5)
  end

  it "raises error for invalid input" do
    expect { SumService.call(2, "a") }.to raise_error(ArgumentError)
  end
end
