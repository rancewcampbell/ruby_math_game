class Message
  def self.score(p1Lives, p2Lives)
    puts "P1: #{p1Lives}/3 vs P2 #{p2Lives}/3"
  end

  def self.new_turn
    puts "------- NEW TURN -------"
  end

  def self.correct(name)
    puts "#{name}: YES! You are correct!"
  end

  def self.wrong(name)
    puts "#{name}: Not even close..."
  end

  def self.game_over(name, p1Lives, p2Lives)
    puts "------- GAME OVER -------"
    puts "#{name} WINS!!"
    puts "FINAL SCORE: P1: #{p1Lives}/3 vs P2 #{p2Lives}/3"
  end
end