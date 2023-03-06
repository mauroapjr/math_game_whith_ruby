class Player
  attr_accessor :id
    
  def initialize(id) #gonna define players 
    @player_1 = id_1
    @player_2 = id_2
  end

  def get_name #return the player name
  end

  def get_score #return the player score
  end

  def add_point #increment the player score by 1
  end

  def start_turn #set the player to "current turn"
  end

  def end_turn #set the player to "NOT current turn"
  end
  
  def update_score(number) #gonna do the math to update the scores 
  end

end

class Game

  def play_game #the game loop that controls the game flow
  end

  def player_1 #get a first player
  end

  def player_2 #get a second player
  end
  
  def get_current_player #return the current player object
  end

  def get_question #return the current question as a string
  end

  def next_round(number) #move to the next round, 
    #selecting a new question, changing the player and updating the score
  end
  
end

class question

  def get_question #return the question
  end

  def check_answer #check if the answer matches with the question
  end

end




