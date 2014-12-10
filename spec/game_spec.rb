require 'game'

describe Game do 
	let(:g) {g = Game.new}

	it 'should roll' do
		g.roll(0)
	end

	it 'should roll a gutter game' do 
		20.times do
			g.roll(0)
		end
		g.score.should == 0
	end
end