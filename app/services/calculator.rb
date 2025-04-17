class Calculator
  def self.add(input)
    return 0 if input.nil? || input.strip.empty?


    delimiter = /,|\n/
    numbers_part = input.strip


    if input.start_with?("//")

      lines = input.split("\n", 2)


      custom_delimiter = lines[0][2..]
      delimiter = Regexp.new(Regexp.escape(custom_delimiter))


      numbers_part = lines[1] || ""
    end


    numbers = numbers_part.split(delimiter).map(&:strip).reject(&:empty?).map(&:to_i)

    negatives = numbers.select { |n| n < 0 }
    raise "negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?

    numbers.sum
  end
end
