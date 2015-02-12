class DiamondGenerator
  def generate(letter)
    result = []
    letter_distance = letter.ord - 'A'.ord
    if letter == 'A'
      result << 'A'
    else
      (0..letter_distance-1).each do |index|
        current_letter = ('A'.ord + index).chr
        if index == 0
          result << ' '*letter_distance + current_letter + ' '*letter_distance
        else
          result << ' '*(letter_distance-index) + current_letter + ' '*(2*index-1) + current_letter + ' '*(letter_distance-index)
        end
      end
      result = result + [letter + ' '*(2*letter_distance-1) + letter] + result.reverse
    end
    result
  end
end