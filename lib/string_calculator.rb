class StringCalculator
  def add(string_number)
    return 0 if string_number.empty?
    raise "negatives not allowed: #{return_negatives(string_number)}" if contain_negatives?(string_number)
    get_number_array(string_number).reduce(:+)
  end

  private

  def set_delimiter(string_number)
    delimiter = string_number[2]
    string_number.gsub!(delimiter, ",")
  end

  def get_number_array(string_number)
    set_delimiter(string_number) if string_number[0] == "/"
    string_number.gsub("\n", ",").split(",").map(&:to_i)
  end

  def return_negatives(string_number)
    get_number_array(string_number).select { |a| a < 0}
  end

  def contain_negatives?(string_number)
    !return_negatives(string_number).empty?
  end
end