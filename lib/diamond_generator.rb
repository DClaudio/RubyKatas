class DiamondGenerator
  def generate(letter)
    result = []
    letter_distance = letter.ord - 'A'.ord
    (0..letter_distance).each do |index|
      current_letter = ('A'.ord + index).chr
      if index == 0
        result << ' '*letter_distance + current_letter + ' '*letter_distance
      else
        result << ' '*(letter_distance-index) + current_letter + ' '*(2*index-1) + current_letter + ' '*(letter_distance-index)
      end
    end
    result = result + (letter=='A' ? [] : result[0..result.length-2].reverse)
  end
end