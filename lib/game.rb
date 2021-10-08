class Game

  attr_reader :current_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def player_1
    @players[0]
  end

  def player_2
    @players[1]
  end

  #is this still necessary? Yes. But it's not mentioned in penultimate walkthrough
  #Implied I should have created an Attack class, but not stated
  def attack(player) 
    player.get_hit
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  def opponent_of(player)
    players_who_are_not(player)[0]
  end

  def game_over?
    losing_players.any?
  end

  def loser
    losing_players[0]
  end

  private

  attr_reader :players # didn't know this was supposed to be here already. What is the point of a private attr_reader?

  def losing_players
    players.select { |player| player.hit_points <= 0 }
  end

  def players_who_are_not(the_player)
    players.select { |player| player != the_player}
  end

end