require_relative 'game'

class Player < Game
  def initialize
  end

  def name
    # TODO: make sure name is formatted correctly
    @name
  end

  def name=(name)
  	@name = name
  end

  def x_or_o
    rand < 0.5 ? choice = "O" : choice = "X"
  	choice
  end

  def get_choice x_or_o
  	puts @name + ", Where would you like to go? "
  	choice = gets.chomp
  	if @name.spot_free(choice)
  		game.change_position(x_or_o, choice)
  	end
  end
end