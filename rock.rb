  puts bigstring = "
 *****    * **     * **   *        * **
 *   **   *    *  *       *       *
 ** **    ** **   * **    *       * ** 
 *    *   *            *  *            *
 *     *  *       * * *   * * **  * * *

"
loop do
  weapons = %w[rock paper scissors lizard spock]
  acceptable_inputs = (acceptable_inputs == "rock" || acceptable_inputs == "paper" || acceptable_inputs == "scissors" || acceptable_inputs == "lizard" || acceptable_inputs == "spock" || acceptable_inputs == "potato" || acceptable_inputs == "ar15")


  computer_input = weapons.sample
  puts "welcome to rock paper scissors lizard spock! what weapon of destruction shall you choose?"
  acceptable_inputs = gets.chomp.strip

  while !(acceptable_inputs)
    puts "that weapon does not exist in this world!"
    puts "pick one of 5 weapons that i have brought upon you!"
    acceptable_inputs = gets.chomp.strip
  end

  if acceptable_inputs
    if acceptable_inputs == computer_input
      puts "player and computer tied!"
    elsif acceptable_inputs == "rock" && (computer_input == "scissors" || computer_input == "lizard")
      puts "player chose #{acceptable_inputs} and computer player chose #{computer_input} player WON!!"

    elsif acceptable_inputs == "paper" && (computer_input == "rock" || computer_input == "spock")
      puts "player chose #{acceptable_inputs} and computer player chose #{computer_input} player WON!!"

    elsif acceptable_inputs == "scissors" && (computer_input == "lizard" || computer_input == "paper")
      puts "player chose #{acceptable_inputs} and computer player chose #{computer_input} player WON!!"

    elsif acceptable_inputs == "lizard" && (computer_input == "spock" || computer_input == "paper")
      puts "player chose #{acceptable_inputs} and computer player chose #{computer_input} player WON!!"

    elsif acceptable_inputs == "spock" && (computer_input == "rock" || computer_input == "scissors")
      puts "player chose #{acceptable_inputs} and computer player chose #{computer_input} player WON!!"

    elsif acceptable_inputs == "potato"
      puts "ARMAGEDDON HAS ARRIVED COMPUTER PLAYER LOSES!!!"

    elsif acceptable_inputs == "ar15"
      puts "yaargghh! gun control!"

    else
      puts "player chose #{acceptable_inputs} and computer player chose #{computer_input} player LOST!!"
    end
  end

  puts "wanna play again? yes/no"
  answer = gets.chomp.strip
  break if answer == "no"
end

