class StringCalculator
  def add(string_number)
    get_number_array(string_number)
    return 0 if string_number.empty?
    get_number_array(string_number).reduce(:+)
  end

  private

  def get_number_array(string_number)
    set_delimiter(string_number) if string_number[0] == "/"
    string_number.gsub("\n", ",").split(",").map(&:to_i)
  end

  def set_delimiter(string_number)
    delimiter = string_number[2]
    string_number.gsub!(delimiter, ",")
  end
end