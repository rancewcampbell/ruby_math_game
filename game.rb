class Game
  attr_reader :player1, :player2, :tester, :testee
  attr_writer :tester, :testee

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @tester = @player1
    @testee = @player2
  end

  def set_turns
    if self.tester == player1
      self.tester = player2
      self.testee = player1
    else 
      self.tester = player1
      self.testee = player2
    end
  end

  def start_game
    while player1.lives > 0 && player2.lives > 0 do
      query = Question.new(tester.name)
      puts "P1: #{player1.lives}/3 vs P2 #{player2.lives}/3"
      puts "------- NEW TURN -------"
      query.generate_question
      if query.check_answer
        puts "#{tester.name}: YES! You are correct!"
      else
        puts "#{tester.name}: Not even close..."
        testee.lose_life
      end
      set_turns
    end
    puts "------- GAME OVER -------"
    puts "#{tester.name} WINS!!"
    puts "FINAL SCORE: P1: #{player1.lives}/3 vs P2 #{player2.lives}/3"
  end

end