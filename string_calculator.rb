class StringCal
  def add(str)
   return 0 if str.empty?
    numbers =  str.split(",")
    sum = str.split(",").map(&:to_i).sum
  end
end