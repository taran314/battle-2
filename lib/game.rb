require_relative './player'

class Game

  attr_reader :player_1, :player_2, :turn, 
  :current_turn, :opponent

  def initialize(player_1, player_2)
    @player_1 = Player.new(player_1)
    @player_2 = Player.new(player_2)
    @current_turn = player_1
    @opponent = player_2
    @turn = true
  end

  def attack
    @player_2.deduct_hit_points if @turn
    @player_1.deduct_hit_points unless @turn
    turn_switcher
  end

  private

  def turn_switcher
    @turn = ! @turn
    @current_turn, @opponent = @opponent, @current_turn
  end

end