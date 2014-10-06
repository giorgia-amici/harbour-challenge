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


	def pick_cargo(container)
			what_picks = which_mean(container)
			if what_picks == 'lorry'
				@infantry[0].on_truck << container
			puts "I am gonna be picked by a lorry"
			elsif what_picks == 'ship'
				@fleet[0].on_board << container
			puts "I am gonna be picked by a ship"
		end
	end
end  		 	

#pick_cargo(which_mean(@rubrick))


#pickuo function




#will have the list of containers and ships and lorries