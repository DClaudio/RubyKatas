class DiamondGenerator
  def generate(letter)
    topDiamond = []
    letter_distance = letter.ord - 'A'.ord
    (0..letter_distance).each do |index|
      current_letter = ('A'.ord + index).chr
      if index == 0
        topDiamond << ' '*letter_distance + current_letter + ' '*letter_distance
      else
        topDiamond << ' '*(letter_distance-index) + current_letter + ' '*(2*index-1) + current_letter + ' '*(letter_distance-index)
      end
    end
    topDiamond + (letter=='A' ? [] : topDiamond.reverse[1..-1])
  end
end