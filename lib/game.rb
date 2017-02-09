class Game
  def initialize
    @board_positions = {one: "1", two: "2", three: "3", four: "4", five: "5", six: "6", seven: "7", eight: "8", nine: "9"}
    @turn = "x"
    puts "\n\nA new game has started!\n\n"
    draw_board
  end

  def change_position(x_or_o, position)
    case
    when position == "1"
      @board_positions[:one] = x_or_o
    when position == "2"
      @board_positions[:two] = x_or_o
    when position == "3"
      @board_positions[:three] = x_or_o
    when position == "4"
      @board_positions[:four] = x_or_o
    when position == "5"
      @board_positions[:five] = x_or_o
    when position == "6"
      @board_positions[:six] = x_or_o
    when position == "7"
      @board_positions[:seven] = x_or_o
    when position == "8"
      @board_positions[:eight] = x_or_o
    when position == "9"
      @board_positions[:nine] = x_or_o
    end
  end

  def draw_board
    puts "  " +
         "__#{@board_positions[:one]}__|" +
         "__#{@board_positions[:two]}__|" +
         "__#{@board_positions[:three]}__\n  " +
         "__#{@board_positions[:four]}__|" +
         "__#{@board_positions[:five]}__|" +
         "__#{@board_positions[:six]}__  \n  " +
         "__#{@board_positions[:seven]}__|" +
         "__#{@board_positions[:eight]}__|" +
         "__#{@board_positions[:nine]}__\n\n"
  end 

  def game_over? last_move_choice
    if  
      (@board_positions[:one] == last_move_choice &&
      @board_positions[:two] == last_move_choice &&
      @board_positions[:three] == last_move_choice) ||
      
      (@board_positions[:four] == last_move_choice &&
      @board_positions[:five] == last_move_choice &&
      @board_positions[:six] == last_move_choice) ||
      
      (@board_positions[:seven] == last_move_choice &&
      @board_positions[:eight] == last_move_choice &&
      @board_positions[:nine] == last_move_choice) ||
      
      (@board_positions[:one] == last_move_choice &&
      @board_positions[:four] == last_move_choice &&
      @board_positions[:seven] == last_move_choice) ||
      
      (@board_positions[:two] == last_move_choice &&
      @board_positions[:five] == last_move_choice &&
      @board_positions[:eight] == last_move_choice) ||
      
      (@board_positions[:three] == last_move_choice &&
      @board_positions[:six] == last_move_choice &&
      @board_positions[:nine] == last_move_choice) ||
      
      (@board_positions[:one] == last_move_choice &&
      @board_positions[:five] == last_move_choice &&
      @board_positions[:nine] == last_move_choice) ||
      
      (@board_positions[:three] == last_move_choice &&
      @board_positions[:five] == last_move_choice &&
      @board_positions[:seven] == last_move_choice)
      true
    else
      false
    end
  end

  def spot_free? spot
    if spot_to_board_position(spot) == "O" || spot_to_board_position(spot) == "X"
      false
    else
      true
    end

  end

  def spot_to_board_position position
    case
    when position == "1"
      @board_positions[:one]
    when position == "2"
      @board_positions[:two]
    when position == "3"
      @board_positions[:three]
    when position == "4"
      @board_positions[:four]
    when position == "5"
      @board_positions[:five]
    when position == "6"
      @board_positions[:six]
    when position == "7"
      @board_positions[:seven]
    when position == "8"
      @board_positions[:eight]
    when position == "9"
      @board_positions[:nine]
    end
  end


end