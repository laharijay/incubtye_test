require_relative './spec_helper.rb'
require_relative '../string_calculator.rb'

describe StringCal do
  
  before(:each) do
    @str_cal = StringCal.new

  end
  
  describe "#string_calculator" do
    it "return 0 for blank string" do
      input = ""
      expect(@str_cal.add(input)).to eq(0)
    end

    it "allow the add method to handle an any amount of numbers." do
      input = "3,4,5,1"
      expect(@str_cal.add(input)).to eq(13)
    end

    it "allow the add method to handle new lines between numbers (instead of commas)" do
      input = "1\n2,3"
      expect(@str_cal.add(input)).to eq(6)

      input2 = "1,\n"
      expect(@str_cal.add(input2)).to eq(1)

    end

    it "support different delimiters" do
      input = "//;\n1;2"
      expect(@str_cal.add(input)).to eq(3)
    end

    it " raise error if negative present" do
      input = "1\n2,-3"
      expect(@str_cal.add(input)).to eq("negative numbers not allowed -3")
    end

    it " raise error if multiple negative present" do
      input = "1\n2,-3,-4"
      expect(@str_cal.add(input)).to eq("negative numbers not allowed -3,-4")
    end
  end
end
