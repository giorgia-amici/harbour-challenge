class Harbour
	attr_accessor :cargo, :fleet, :infantry

	def initialize
		@cargo = []
		@fleet = []
		@infantry = [] 
	end

	def ready_to_be_picked(container)
		@cargo << container
	end


	def in_the_harbour(x)
		if x.class == Ship
			@fleet << x
		elsif x.class == Lorry
			@infantry << x
		end
	end

	def fleet?(ship)
		@fleet.include?(ship)
	end

	def infantry?(lorry)
		@infantry.include?(lorry)
	end

# if infantry?(mean) == true or fleet?(mean) == true


	def which_mean(container)
		container.mean_of_transport
	end


	def find_mean_into_harbour(mean)
		if mean.class == Ship
			@fleet.index(mean)
		elsif mean.class == Lorry
			@infantry.index(mean)
		end	
	end

	def pick_cargo(container, mean)
			what_picks = which_mean(container)
			if what_picks == 'lorry' and mean.class == Lorry
				position = find_mean_into_harbour(mean)
				container.picked_from_harbour = Date.today.to_s
				@infantry[position].on_truck << container
			puts "I am gonna be picked by a lorry"
			elsif what_picks == 'ship' and mean.class == Ship
				position = find_mean_into_harbour(mean)
				container.picked_from_harbour = Date.today.to_s
				@fleet[position].on_board << container
			puts "I am gonna be picked by a ship"
		else
			puts 'I cannot be carried by this means of transport '
		end
	end
end  		 	
