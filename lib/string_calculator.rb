class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?
    
    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..]
    else
      delimiter = ","
    end
    numbers = numbers.gsub("\n", delimiter)
    numbers.split(delimiter).map(&:to_i).sum
  end
end
