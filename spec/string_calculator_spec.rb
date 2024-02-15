require_relative './spec_helper.rb'
require_relative '../string_calculator.rb'

describe "#handle bank string" do
  it "string bank" do
    input = ""
    expect(string_calculate(input)).to eq(0)
  end
end
