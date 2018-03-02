  puts "
 *****    * **     * **   *        * **
 *   **   *    *  *       *       *
 ** **    ** **   * **    *       * ** 
 *    *   *            *  *            *
 *     *  *       * * *   * * **  * * *

"
loop do
  weapons = %w[rock paper scissors lizard spock]
  computer_input = weapons.sample
  player_options = %w[rock paper scissors lizard spock potato ar15]


  puts "welcome to rock paper scissors lizard spock! what weapon of destruction shall you choose?"
  player_input = gets.chomp.strip.downcase

  while !(player_options.include?(player_input))
    puts "that weapon does not exist in this world!"
    puts "pick one of 5 weapons that i have brought upon you!"
    player_input = gets.chomp.strip.downcase
  end

    if player_input == computer_input
      puts "#{player_input} and #{computer_input} its a tie!"
    elsif player_input == "rock" && (computer_input == "scissors" || computer_input == "lizard")
      puts "player chose #{player_input} computer chose #{computer_input} player WON!!"

    elsif player_input == "paper" && (computer_input == "rock" || computer_input == "spock")
      puts "player chose #{player_input} computer chose #{computer_input} player WON!!"

    elsif player_input == "scissors" && (computer_input == "lizard" || computer_input == "paper")
      puts "player chose #{player_input} computer chose #{computer_input} player WON!!"

    elsif player_input == "lizard" && (computer_input == "spock" || computer_input == "paper")
      puts "player chose #{player_input} computer chose #{computer_input} player WON!!"

    elsif player_input == "spock" && (computer_input == "rock" || computer_input == "scissors")
      puts "player chose #{player_input} computer chose #{computer_input} player WON!!"

    elsif player_input == "potato"
      puts "ARMAGEDDON HAS ARRIVED COMPUTER PLAYER LOSES!!!"

    elsif player_input == "ar15"
      puts "yaargghh! gun control!"

    else
      puts "player chose #{player_input} and computer chose #{computer_input} player LOST!!"
    end
  
  puts "wanna play again? yes/no"
  answer = gets.chomp.strip.downcase
  break if answer == "no"
end

