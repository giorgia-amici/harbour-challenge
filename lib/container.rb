class Container
	attr_accessor :id, :origin, :destination

	def initialize
		@id = rand(1889..43556)
		@origin = ['Rome', 'Vigo', 'Liverpool', 'New York', 'Beijing', 'Naples','Marseille'].shuffle[0]
		@destination = 'Rome'
		#, 'Vigo', 'Liverpool', 'New York', 'Beijing', 'Naples','Marseille'].shuffle[0]
		# while @origin == @destination
		# 	@destination = ['Rome', 'Vigo', 'Liverpool', 'New York', 'Beijing', 'Naples','Marseille'].shuffle[0]
		# end

	end 

	# def delivery_date
	# 	 @delivery_date = (Date.today + rand(1..7)).to_s
	# end


end	

