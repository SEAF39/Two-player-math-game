require_relative 'player'
require_relative 'question'

class MathGame
  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @current_player = @player1
  end

  def start_game
    puts "----- 2-Player Math Game -----"
    puts "Let's start the game!"

    loop do
      generate_question

      # Prompt the current player with the question
      puts "\n#{@current_player}, here's your question:"
      puts @question

      # Get the player's answer
      print 'Your answer: '
      answer = gets.chomp.to_i

      # Check the answer
      if answer == @question.answer
        puts "Correct! Good job, #{@current_player}!"
        @current_player.score += 1
      else
        puts "Incorrect! Better luck next time, #{@current_player}!"
        @current_player.lives -= 1
      end

      # Display the scores after each turn
      display_scores

      # Switch the current player
      switch_player

      # Check if the game is over
      if game_over?
        announce_winner
        break
      end
    end

    puts "\n----- Game Over -----"
    puts "Thank you for playing!"
  end

  private

  def generate_question
    @question = Question.new
  end

  def display_scores
    puts "\nScores:"
    puts "#{@player1}: #{@player1.score}"
    puts "#{@player2}: #{@player2}"
  end

  def switch_player
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  def game_over?
    @player1.lives.zero? || @player2.lives.zero?
  end

  def announce_winner
    if @player1.lives.zero?
      winner = @player2
      loser = @player1
    else
      winner = @player1
      loser = @player2
    end

    puts "\n----- Game Over -----"
    puts "#{winner} wins with a score of #{winner.score}!"
    puts "#{loser} scored #{loser.score}."
  end
end
