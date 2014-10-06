class Container
	attr_accessor :id, :origin, :destination, :mean_of_transport 

	def initialize
		@id = rand(1889..43556)
		@origin = ['Rome', 'Vigo','Liverpool', 'New York', 'Beijing', 'Naples','Marseille'].shuffle[0]
		#departure_date_from_origin
		@destination = ['Rome', 'Vigo', 'Liverpool', 'New York', 'Beijing', 'Naples','Marseille'].shuffle[0]
		while @origin == @destination
			@destination = ['Rome', 'Vigo', 'Liverpool', 'New York', 'Beijing', 'Naples','Marseille'].shuffle[0]
		end

	end 

	def delivery_date
		 @delivery_date = Date.today + rand(1..7) 
	end

	def continue_journey_by
		@mean_of_transport = ['lorry', 'ship'].shuffle[0]
	end

end	

