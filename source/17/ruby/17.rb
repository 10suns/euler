def convert_to_words_core(number)
  word_dict = {
    1000 => 'thousand',
    100 => 'hundred',
    90 => 'ninety',
    80 => 'eighty',
    70 => 'seventy',
    60 => 'sixty',
    50 => 'fifty',
    40 => 'forty',
    30 => 'thirty',
    20 => 'twenty',
    19 => 'nineteen',
    18 => 'eighteen',
    17 => 'seventeen',
    16 => 'sixteen',
    15 => 'fifteen',
    14 => 'fourteen',
    13 => 'thirteen',
    12 => 'twelve',
    11 => 'eleven',
    10 => 'ten',
    9 => 'nine',
    8 => 'eight',
    7 => 'seven',
    6 => 'six',
    5 => 'five',
    4 => 'four',
    3 => 'three',
    2 => 'two',
    1 => 'one'
  }

  def process_tens(number, word_dict)
    tens = number/10 * 10
    unit = number%10
    conversion = word_dict[tens]
    conversion += " #{word_dict[unit]}" if unit > 0
    conversion
  end

  def process_hundreds(number, word_dict)
    hundreds = number/100
    remainder = number%100
    conversion = word_dict[hundreds] + " #{word_dict[100]}"
    conversion += " and #{convert_to_words_core(remainder)}" if remainder > 0
    conversion
  end

  def process_large_number(number, base_unit, word_dict)
    number_of_base_units = number/base_unit
    remainder = number % base_unit
    conversion = "#{convert_to_words_core(number_of_base_units)} #{word_dict[base_unit]}"
    if remainder > 0 && remainder < 100
      conversion += " and #{convert_to_words_core(remainder)}"
    elsif remainder >= 100
      conversion +=  " #{convert_to_words_core(remainder)}"
    end
    conversion
  end

  return word_dict[number] if 0 <= number && number < 20

  return process_tens(number, word_dict) if 20 <= number && number < 100

  return process_hundreds(number, word_dict) if 100 <= number && number < 1000

  return process_large_number(number, 1000, word_dict) if 1000 <= number && number < 1e6
end

puts (1..1000).inject(0) { |sum, i|
  sum + convert_to_words_core(i).delete(' ').length
}