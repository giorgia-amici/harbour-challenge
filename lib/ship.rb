class Ship
	attr_accessor :name, :cargo, :destination, :capacity

	def initialize
		@cargo = []
	end

	def full?
		@capacity == @cargo.size
	end

end

