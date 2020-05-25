class Question
  attr_reader :num1, :num2, :player

  def initialize(player)
    @player = player
    @num1 = rand(21)
    @num2 = rand(21)
  end

  def generate_question  
    puts "#{player}: What does #{num1} plus #{num2} equal?"
  end

  def check_answer
    print "> "
    answer = $stdin.gets.chomp
    answer.to_i == num1 + num2
  end
end