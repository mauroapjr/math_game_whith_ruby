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
    check_score
    show_stats
    @player_2.new_question
    check_score
    show_stats
    puts "---------------NEW TURN---------------"
    turn
  end

  def show_stats
    puts "P1: #{@player_1.score}/3 vs P2: #{@player_2.score}/3" 
  end

  def winner(player)
    puts "#{player.name} wins with #{player.score}/3"
    puts '--------------GAME OVER--------------'
    puts 'Good bye!'
    exit(0)
  end

  def check_score
    if @player_1.game_over
      winner(@player_2)
    elsif @player_2.game_over
      winner (@player_1)
    end
  end
end
