require_relative './player'

class Game
  
  # method constructor for the class 
  def initialize
    # we add @ to make the variables to global 
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @players = [@player1, @player2]

  end


  def play

    while (@player1.score > 0 && @player2.score > 0) do 
      # asking question => player object
      question_player = @players.first
      # ansewring question player => player object 
      answering_player = @players.last

      # ask question with two random numbers
      num1 = rand(1..20)
      num2 = rand(1..20)
      answer = num1 + num2
      # puts "Random numbers #{num1}, #{num2} total is #{answer}"
      puts "#{question_player.name}: What does #{num1} plus #{num2} equal?"

      # other player answers => get.chomp
      print "> "
      player_answer = $stdin.gets.chomp
      # if correct 

      if player_answer.to_i == answer
        puts "#{question_player.name}: Bingo! Correct answer!"
      else # if wrong decrease the point of that player 
        puts "#{question_player.name}: Uh oh! Wrong answer!"
        answering_player.score -= 1
      end

      # display scoreboard
      puts "P1: #{@player1.score}/3 vs P2: #{@player2.score}/3"

      #switch the player and do it again
      puts "------ NEW TURN ------"
      @players.rotate!
    end
    winner = @player1.score > 0? @player1:@player2
    puts "#{winner.name} wins with a score of #{winner.score}/3 "
    puts "----- GAME OVER -----"
    puts "Good bye!"    
  end

end

