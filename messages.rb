class Message

  def self.start_message 
    puts "\n"
    puts "Welcome to OOP Addition!!"
    puts "\n"
    puts "The rules are very simple..."
    puts "Each player will give eachother numbers between 0 and 21."
    puts "All you have to do is answer the equation correctly!"
    puts "You only have 3 lives so use them wisely..."
    puts "Good luck!!"
    puts "\n"
    puts "----------------------------------------------------------"
    puts "\n"
  end

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