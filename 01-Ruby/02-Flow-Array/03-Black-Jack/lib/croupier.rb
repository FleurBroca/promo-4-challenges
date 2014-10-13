require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  # TODO: return (not print!) a message containing the player's score and bank's score
  return "Your score is #{player_score}, bank is #{bank_score}."
end

def end_game_message(player_score, bank_score)
  # TODO: return (not print!) a message telling if the user won or lost.
 if player_score == 21
  return "black jack!"
 elsif player_score > 21
  return "The bank wins"
 elsif player_score > bank_score
   return "You beat the bank! You win."
 else
  return "The bank wins"
  end
end


def play_game
  # TODO: make the user play from terminal in a while loop that will stop
  #       when the user will not be asking for  a new card
  player_score = pick_player_card
  bank_score = pick_bank_card
  puts state_of_the_game(player_score, bank_score)
  puts "Card ? (type 'y' or 'yes' for a new card)"
  answer == gets.chomp
  while answer == "y" || answer == "yes"
    player_score = player_score + pick_player_card
    puts state_of_the_game(player_score, bank_score)
  if player_score < 21
    answer = "out"
  else
    puts "Card ? (type 'y' or 'yes' for a new card)"
    answer = gets.chomp
  end
    puts end_game_message(player_score,bank_score)
  end

end
