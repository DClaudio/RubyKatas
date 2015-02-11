class BowlingGame

  FRAME_NUM = 10

  def initialize
    @rolls=Array.new(0)
  end

  def roll(pins)
    @rolls << pins
  end

  def score
    score = 0
    frame_index = 0
    FRAME_NUM.times do
      if strike?(frame_index)
        score += strike_bonus(frame_index)
        frame_index+=1
      elsif spare?(frame_index)
        score += spare_bonus(frame_index)
        frame_index += 2
      else
        score += sum_of_balls_in_frame(frame_index)
        frame_index += 2
      end
    end
    score
  end

  private
  def spare?(index)
    @rolls[index] + @rolls[index+1] == 10
  end
  def strike?(index)
    @rolls[index] == 10
  end
  def sum_of_balls_in_frame(index)
    @rolls[index] + @rolls[index+1]
  end
  def spare_bonus(index)
    10 + @rolls[index+2]
  end
  def strike_bonus(index)
    10 + @rolls[index+1] + @rolls[index+2]
  end

end