class StringCalculator
  def add(string_number)
    return 0 if string_number.empty?
    get_number_array(string_number).reduce(:+)
  end

  private

  def get_number_array(string_number)
    string_number.gsub("\n", ",").split(",").map(&:to_i)
  end
end