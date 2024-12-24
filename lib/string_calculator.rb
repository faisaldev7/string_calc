class StringCalculator
  def add(numbers)
    return 0 if numbers.empty?

    if numbers.start_with?("//")
      delimiter = numbers[2]
      numbers = numbers[4..]
    else
      delimiter = ","
    end

    number_list = parse_numbers(numbers, delimiter)

    check_for_negatives(number_list)

    number_list.reject { |n| n > 1000 }.sum
  end

  private

  def parse_numbers(numbers, delimiter)
    numbers.gsub("\n", delimiter).split(delimiter).map(&:to_i)
  end

  def check_for_negatives(number_list)
    negatives = number_list.select { |n| n < 0 }
    raise "Negative numbers not allowed: #{negatives.join(', ')}" unless negatives.empty?
  end
end
