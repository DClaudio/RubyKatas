require 'minitest/autorun'
require '../lib/bowling_game'

class BowlingGameTest < Minitest::Test

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    @bg = BowlingGame.new
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  # Gutter Game
  def test_gutter_game
    20.times{ @bg.roll(0) }
    assert_equal(0, @bg.score, "game with 0 points")
  end

  def test_all_ones
    20.times{ @bg.roll(1) }
    assert_equal(20, @bg.score, "game with all ones")
  end

  def test_one_spare
    roll_spare
    @bg.roll(3)
    17.times{ @bg.roll(0)}
    assert_equal(16, @bg.score, "game with one spare")
  end

  def test_one_strike
    roll_strike
    @bg.roll(3)
    @bg.roll(4)
    16.times{ @bg.roll(0)}
    assert_equal(24, @bg.score, "game with one strike")
  end

  def test_perfect_game
    12.times { roll_strike }
    assert_equal(300, @bg.score, "perfect game")
  end

  private
  def roll_many(n,pins)
    n.times{ @bg.roll(pins) }
  end
  def roll_spare
    2.times{ @bg.roll(5) }
  end
  def roll_strike
    @bg.roll(10)
  end


end