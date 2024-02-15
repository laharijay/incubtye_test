class StringCal
  def add(str)
    return 0 if str.empty?
    str.gsub!("\n", ",")
    # numbers =  str.split(",")
    sum = str.split(",").map(&:to_i).sum
  end

end