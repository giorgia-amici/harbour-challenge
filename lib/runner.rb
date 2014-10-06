require './container.rb'
require './harbour.rb'
require './lorry.rb'
require	'./ship.rb'
require "date"

def get_instances
	@pequod = Ship.new
	@camion = Lorry.new
	@rubrick = Container.new
	@rubrick.delivery_date
	@border = Harbour.new
	@border.in_the_harbour(@camion)
	@border.in_the_harbour(@pequod)
	@border.ready_to_be_picked(@rubrick)
	@rubrick.continue_journey_by
end


get_instances