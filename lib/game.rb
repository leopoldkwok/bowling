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
        if @rolls[first_in_frame]== 10 #strike
        	score +=10 + @rolls[first_in_frame + 1]+ @rolls[first_in_frame+2]
        	first_in_frame+=1
        elsif spare?(first_in_frame)
          score += 10 + @rolls[first_in_frame + 2]
          first_in_frame += 2
        else
        score += @rolls[first_in_frame] + @rolls[first_in_frame + 1]
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

end