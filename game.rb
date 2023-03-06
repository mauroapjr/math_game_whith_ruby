class Game
  def initialize (name)
    @player_1 = Player.new('Player_1')
    @player_2 = Player.new('Player_2')  
    @name = name
  end

  def start
    puts "Are you guys ready for this game #{@player_1.name} and #{@player_2.name}?"
    turn
  end

  def turn 
    @player_1.new_question
    @player_2.new_question
    puts "---------------NEW TURN---------------"
  end

  def get_answer #return the current answer as a string
  end

  def next_round #move to the next round, 
    #selecting a new question, changing the player and updating the score
  end
  
end