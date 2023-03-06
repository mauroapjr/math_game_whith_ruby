class Player
 attr_accessor :name, :score
    
  def initialize (name) 
    @name = name
    @score = 3
  end

  def lost_point #return the player score
    @score -= 1
  end

  def game_over
    loop do
      if @score == 0
        puts "Game Over"
      end
    end    
  end

  def new_question
    new_question = Question.new
    new_question.get_question(name)
    print '> '
    @playerchoice = $stdin.gets.chomp.to_i

  end
  
  def update_score(number) #gonna do the math to update the scores 
  end

end
