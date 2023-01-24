class Game 

  def initialize
    @current_player = 1
    @player1_score = 3
    @player2_score = 3
    @correct_answer = 0
  end

  ##set up the question using random numbers
  #set correct_answer available in global or keep local and change calculation?
  def question
    first_number = rand(1..20)
    second_number = rand(1..20)
    @correct_answer = first_number + second_number 
    puts "What does #{first_number} plus #{second_number} equal?"
    calculation()
  end

  #determine if the answer given is correct and if so,depending on player, update the scores
  #change current player
  def calculation(current_player) # how am I going to call this in main and access current player?
    player_answer = gets.chomp
    if player_answer == @correct_answer
      "Yes that answer is correct"
      turn()
    else "No that is incorrect"
      if current_player == 1
        @player_1score -= 1
        @current_player = 2
      else 
        @player2_score -=1
        @current_player = 1
      end

    #if scores updated above are 0 then end game. Move this out?
    if @player1_score || @player2_score == 0
      end_game()
    end

    turn()
  end


  #display current scores and prompt the next question to be rendered
  def turn
    puts "P1: #{@player1_score}/3 vs P2: #{@player2_score}/3"
    puts "-----NEW TURN-----"
    question()
  end

  #depending on player_scores 
  def end_game
    if @player1_score == 0
      "Player 2 wins with score of#{@player2_score}"
    else
      "Player 1 wins with score of #{@player1_score}"
    end
    puts "-----GAME OVER-----"
    puts "Good bye!"
  end

end