class StringCal
  def add(str)
    return 0 if str.empty?
    delimiter = remove_delimeters(str)
    str.gsub!(/^\/\/.\n/, "")
    str.split(/[#{delimiter}]/).map(&:to_i).sum
  end

  private
  def remove_delimeters(str)
    delimiter_pattern = str.match(/^\/\/(.)\n/)
    delimiter = delimiter_pattern ? Regexp.escape(delimiter_pattern[1]) : "[,\n]"
  end

end