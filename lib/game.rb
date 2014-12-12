class Game

	def initialize
		@rolls =[]
	end

	def roll(pins)
		@rolls << pins
	end

	def roll_many(n,pins)
		n.times do
			roll(pins)
		end
	end

      def score
      score = 0
      first_in_frame = 0
      frame = 0
      while frame < 10
        if strike?(first_in_frame)
        	score +=10 + strike_bonus_balls(first_in_frame)
        	first_in_frame+=1
        elsif spare?(first_in_frame)
          score += 10 + spare_bonus_ball(first_in_frame)
          first_in_frame += 2
        else
        score += two_balls_in_frame(first_in_frame)
        first_in_frame += 2
       end
       frame +=1
     end
     score
   end



	def spare?(first_in_frame)
		@rolls[first_in_frame] + @rolls[first_in_frame+1]==10
	end

	def roll_spare
		roll(5)
		roll(5)
	end

	def strike?(first_in_frame)
		@rolls[first_in_frame] == 10
	end

	def strike_bonus_balls(first_in_frame)
		@rolls[first_in_frame+1]+@rolls[first_in_frame+2]
	end

	def spare_bonus_ball(first_in_frame)
		@rolls[first_in_frame+2]
	end

	def two_balls_in_frame(first_in_frame)
		@rolls[first_in_frame] + @rolls[first_in_frame + 1]
	end
end