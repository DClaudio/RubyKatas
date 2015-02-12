class DiamondGenerator
  STARTING_LETTER = 'A'
  def generate(letter)
    result = []
    letter_index = letter.ord - STARTING_LETTER.ord
    if letter == 'A'
      result << 'A'
    else
      (0..letter_index-1).each do |index|
        output_letter = (STARTING_LETTER.ord + index).chr
        if index == 0
          result << ' '*letter_index + output_letter + ' '*letter_index
        else
          result << ' '*(letter_index-index) + output_letter + ' '*(2*index-1) + output_letter + ' '*(letter_index-index)
        end
      end
      result = result + [letter + ' '*(2*letter_index-1) + letter] + result.reverse
    end
    result
  end
end