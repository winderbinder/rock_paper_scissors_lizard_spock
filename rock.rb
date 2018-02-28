loop do
  puts bigstring = "
 *****    * **     * **   *        * **
 *   **   *    *  *       *       *
 ** **    ** **   * **    *       * ** 
 *    *   *            *  *            *
 *     *  *       * * *   * * **  * * *

"
  

  options = %w[rock paper scissors lizard spock]

  computer_player = options[rand(options.length)]
  puts "welcome to rock paper scissors lizard spock! what weapon of destruction shall you choose?"
  player_input = gets.chomp.strip

  while !(player_input == "rock" || player_input == "paper" || player_input == "scissors" || player_input == "lizard" || player_input == "spock" || player_input == "potato" || player_input == "ar15")
    puts "that weapon does not exist in this world!"
    puts "pick one of 5 weapons that i have brought upon you!"
    player_input = gets.chomp.strip
  end

  if player_input == "rock" || player_input == "paper" || player_input == "scissors" || player_input == "lizard" || player_input == "spock" || player_input == "potato" || player_input == "ar15"
    if player_input == computer_player
      puts "player and computer tied!"
    elsif player_input == "rock" && computer_player == "scissors"
      puts "player chose #{player_input} and computer player chose #{computer_player} player WON!!"
    elsif player_input == "rock" && computer_player == "lizard"
      puts "player chose #{player_input} and computer player chose #{computer_player} player WON!!"
    elsif player_input == "paper" && computer_player == "rock"
      puts "player chose #{player_input} and computer player chose #{computer_player} player WON!!"
    elsif player_input == "paper" && computer_player == "spock"
      puts "player chose #{player_input} and computer player chose #{computer_player} player WON!!"
    elsif player_input == "scissors" && computer_player == "lizard"
      puts "player chose #{player_input} and computer player chose #{computer_player} player WON!!"
    elsif player_input == "scissors" && computer_player == "paper"
      puts "player chose #{player_input} and computer player chose #{computer_player} player WON!!"
    elsif player_input == "lizard" && computer_player == "spock"
      puts "player chose #{player_input} and computer player chose #{computer_player} player WON!!"
    elsif player_input == "lizard" && computer_player == "paper"
      puts "player chose #{player_input} and computer player chose #{computer_player} player WON!!"
    elsif player_input == "spock" && computer_player == "rock"
      puts "player chose #{player_input} and computer player chose #{computer_player} player WON!!"
    elsif player_input == "spock" && computer_player == "scissors"
      puts "player chose #{player_input} and computer player chose #{computer_player} player WON!!"
    elsif player_input == "potato"
      puts "ARMAGEDDON HAS ARRIVED COMPUTER PLAYER LOSES!!!"
    elsif player_input == "ar15"
      puts "yaargghh! gun control!"
    else
      puts "player chose #{player_input} and computer player chose #{computer_player} player LOST!!"
    end
  end

  puts "wanna play again? yes/no"
  answer = gets.chomp.strip
  break if answer == "no"
end

