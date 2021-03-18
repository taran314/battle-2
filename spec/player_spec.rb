require 'player'

describe Player do
  let(:taran) { Player.new("Taran") }
  it 'has a name attribute' do 
    expect(taran.name).to eq "Taran"
  end

  describe '#hit points' do
    it 'show a players HP' do
      expect(taran.hit_points).to eq 100
    end
  end


end