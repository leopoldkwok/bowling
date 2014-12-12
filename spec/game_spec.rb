require 'game'

describe Game do 
	let(:game) {Game.new}


	# def roll_many(n,pins)
	# 	n.times do
	# 		g.roll(pins)
	# 	end
	# end


	it 'can roll' do 
		game.roll(0)
	end

	it 'should roll a gutter game' do 
		game.roll_many(20,0)
		game.score.should == 0
	end

	it 'can roll all ones' do 
		game.roll_many(20,1)
		game.score.should == 20
	end

	it 'can roll a spare' do 
		game.roll_spare
		game.roll(3)
		game.roll_many(17,0)
	end

	it 'can roll a strike' do 
		game.roll(10) #strike
		game.roll(3)
		game.roll(4)
		game.roll_many(16,0)
		game.score.should == 24
	end

	it 'can roll a perfect game' do 
		game.roll_many(12,10)
		game.score.should ==300
	end
end