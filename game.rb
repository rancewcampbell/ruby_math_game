class Game
  attr_reader :player1, :player2, :tester, :testee, :round
  attr_writer :tester, :testee, :round

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @tester = @player1
    @testee = @player2
    @round = 1
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
      Message.score(player1.lives, player2.lives)
      Message.new_turn(round)
      query.generate_question
      if query.check_answer
        Message.correct(tester.name)
      else
        Message.wrong(tester.name)
        testee.lose_life
      end
      set_turns
      self.round += 1
    end
    Message.game_over(testee.name, player1.lives, player2.lives)
  end

end