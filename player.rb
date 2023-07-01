class Player
  attr_reader :name
  attr_accessor :lives, :score

  def initialize(name)
    @name = name
    @lives = 3
    @score = 0
  end

  def to_s
    @name
  end
end
