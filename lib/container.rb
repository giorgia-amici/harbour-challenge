class Container
	attr_accessor :id, :origin, :destination, :delivery_date

	def initialize
		@id = rand(1889..43556)
	end 

	def today_date
		now = Time.new
		time = "#{now.day}-#{now.month}-#{now.year}"
	end

	def delivered_today?
		delivery_date == today_date
	end
end	

