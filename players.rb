class Player
 attr_accessor :name, :score
    
  def initialize (name) 
    @name = name
    @score = 3
  end

  def lost_point 
    @score -= 1
  end

  def game_over
    @score == 0
  end

  def new_question
    new_question = Question.new
    new_question.get_question(name)
    print '> '
    @playerchoice = $stdin.gets.chomp.to_i
    if new_question.check_answer(@playerchoice.to_i)
      puts 'Yes, you are ok'
    else
      puts "Nah..."
      lost_point
    end    
  end
end
