require_relative 'player'
require_relative 'game'

choice = "yes"
begin
  player_1 = Player.new
  player_2 = Player.new
  game = Game.new
  player_1.name=("Kyle")
  player_2.name=("Lisa")
  
  player_1_choice = player_1.x_or_o
  player_1_choice == "O" ? player_2_choice = "X" : player_2_choice = "O"
  puts player_1.name + " is " + player_1_choice
  puts player_2.name + " is " + player_2_choice + "\n\n"
  

  9.times do |i|
    i.even? ? current_player = [player_1.name, player_1_choice] : current_player = [player_2.name, player_2_choice]
    puts current_player[0] + " Where would you like to go? 1-9"
    player_spot = gets.chomp
    if game.spot_free?(player_spot)
      game.change_position(current_player[1], player_spot)
      game.draw_board
    else
      puts "Pick an empty spot!"
      redo
    end
    if game.game_over?(current_player[1])
      puts "Congrats!"
      puts "Play again?  yes/no"
      choice = gets.chomp
      if choice == "yes"
        break
      else
        exit 0
      end
    elsif i == 8
      puts "It's a tie! Play again?  yes/no"
      choice = gets.chomp
    end

  end
  
end until choice == "no"














