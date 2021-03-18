require 'game'
require 'player'

describe Game do
  let(:game) { Game.new("Taran", "Max") }

  describe '#name' do
    it 'has a player instance with a name attribute' do
      expect(game.player_2.name).to eq "Max"
    end
  end

  describe '#turn_switcher' do
    it 'negates the player_1_turn? variable' do
      game.attack
      expect(game.current_turn).to eq "Max"
      expect(game.opponent).to eq "Taran"
    end

    it "attacks player 1 on player 2's turn" do
      game.attack
      expect{ game.attack }.to change { game.player_1.hit_points }.by -10
    end
  end
end
  