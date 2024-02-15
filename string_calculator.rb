class StringCal
  def add(str)
    return 0 if str.empty?
    delimiter = remove_delimeters(str)
    str.gsub!(/^\/\/.\n/, "")
    numbers = str.split(/[#{delimiter}]/).map(&:to_i)
    neg_numbers = check_negative_number(numbers)
    raise "negative numbers not allowed #{neg_numbers.join(',')}" unless neg_numbers.empty?
    numbers.sum
  rescue => e
    e.message
  end

  private
  def remove_delimeters(str)
    delimiter_pattern = str.match(/^\/\/(.)\n/)
    delimiter = delimiter_pattern ? Regexp.escape(delimiter_pattern[1]) : "[,\n]"
  end
   
  def  check_negative_number(numbers)
    numbers.select{|n| n.negative? }
  end

end