class DiamondGenerator
  STARTING_LETTER = 'A'
  def generate(letter)
    result = []
    letter_index = letter.ord - STARTING_LETTER.ord
    first_line = ' '*letter_index + STARTING_LETTER + ' '*letter_index
    output_letter = STARTING_LETTER
    if letter == 'A'
      result << first_line
    else
      (0..letter_index-1).each do |index|
        output_letter = (STARTING_LETTER.ord + index).chr
        if index == 0
          result << first_line
        else
          line = ' '*(letter_index-index) + output_letter + ' '*(2*index-1) + output_letter + ' '*(letter_index-index)
          result << line
        end
      end
      middle_row = letter + ' '*(2*letter_index-1) + letter
      result = result + [middle_row] + result.reverse
    end
=begin
    puts  "----- \n"
    puts result
    puts  " \n"
=end
    result
  end
end