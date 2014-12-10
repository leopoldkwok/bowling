require 'game'

describe Game do 

	it 'should be able to create a new game' do 
		g = Game.new
		g.roll(0)
	end
end