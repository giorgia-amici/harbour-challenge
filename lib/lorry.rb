class Lorry
	attr_accessor :plate, :on_truck, :destination, :capacity

	def initialize
		@plate = rand(16710..17882) #how can I insert letters as well in the random plate??
		@on_truck = []
		@capacity = 5
		@destination = 'Rome'
		#, 'Vigo', 'Liverpool', 'New York', 'Beijing', 'Naples','Marseille'].shuffle[0]
	end


end