class Player
  
  attr_reader :name
  
  # getter and setter 
  attr_accessor :score

  def initialize(name)
    @name = name
    @score = 3
  end

end