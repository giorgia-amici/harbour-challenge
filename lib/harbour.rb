class Harbour
	attr_accessor :cargo, :fleet, :infantry

	def initialize
		@cargo = []
		@fleet = []
		@infantry = [] 
		@containers_to_be_delivered = []
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


	def find_into_harbour(mean)
		if mean.class == Ship
			@fleet.index(mean)
		elsif mean.class == Lorry
			@infantry.index(mean)
		end	
	end

	# def same_destination?(container,mean)
	# 	if container.destination == mean.destination 
	# 		true
	# 	end
	# end

	def pick_up(container)
		@fleet.select{|ship| ship.destination == container.destination} 
		@infantry.select{|lorry| lorry.destination == container.destination}

		#IF BOTH ARE NOT FULL
	end




# def pick_up(container, mean)
# 	@cargo.each do |container|
# 	if container.destination == mean.destination
# 		mean.on_board << container
# 		@containers_to_be_deliverd << container
# 	end
# end



	



end  		 	
