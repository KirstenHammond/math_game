class Game

  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @current_player = @player1
  end
  

  #determine winner
def determine_winner
  if @player1.lives == 0
    puts "#{@player2.name} wins with a score of #{@player2.lives}/3"
  else
    puts "#{@player1.name} wins with a score of #{@player1.lives}/3"
  end
  puts "-----GAME OVER-----"
  puts "Goodbye!"
end

  #switch players
  def switch_players
    if @current_player == @player1
      @current_player = @player2
    else 
      @current_player = @player1
    end
  end


  def begin
  while @player1.lives > 0 && @player2.lives > 0
    puts "-----NEW TURN-----"
    question = Question.new
    puts "#{@current_player.name} : What does #{question.printQuestion}"
    answer = gets.chomp.to_i
  
    if question.check_answer(question.correct_answer, answer)
      puts "#{@current_player.name}: Yes! You are correct"
    else
      @current_player.lives -= 1
      puts "#{@current_player.name} : Seriously? No!"
    end
  
   puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3 "
   
   switch_players
  
  end

  determine_winner

end


end