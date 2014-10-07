class Lorry
	attr_accessor :plate, :cargo, :destination, :capacity

	def initialize
		@plate = rand(16710..17800).to_s + [*'A'..'Z'].shuffle[0..3].join
		@cargo = []
	end

	def full?
		@capacity == @cargo.size
	end


end