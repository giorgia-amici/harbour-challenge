class Ship
	attr_accessor :name, :on_board, :destination, :capacity

	def initialize
		@name = [*'a'..'g'].shuffle.join #just for creating a random name
		@on_board = []
		@destination = 'Rome'
		#, 'Vigo', 'Liverpool', 'New York', 'Beijing', 'Naples','Marseille'].shuffle[0]
	end

end

