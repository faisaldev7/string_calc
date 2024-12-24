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
    number_list = numbers.split(delimiter).map(&:to_i)

    negatives = number_list.select { |n| n < 0 }
    raise "Negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?

    number_list.reject { |n| n > 1000 }.sum
  end
end
