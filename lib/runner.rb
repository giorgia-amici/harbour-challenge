require './container.rb'
require './harbour.rb'
require './lorry.rb'
require	'./ship.rb'
require "date"

def get_instances
	@pequod = Ship.new
	@nautilus = Ship.new
	@camion = Lorry.new
	@trucky = Lorry.new
	@rubrick = Container.new
	@msc = Container.new
	# @rubrick.departure_place = ['Rome', 'Vigo', 'Liverpool', 'New York', 'Beijing', 'Naples','Marseille'].shuffle[0]
	# @rubrick.destination_place = ['Rome', 'Vigo', 'Liverpool', 'New York', 'Beijing', 'Naples','Marseille'].shuffle[0]
	# @rubrick.delivery_date
	# @msc.delivery_date
	@border = Harbour.new
	@border.in_the_harbour(@camion)
	@border.in_the_harbour(@nautilus)
	@border.in_the_harbour(@pequod)
	@border.in_the_harbour(@trucky)
	@border.ready_to_be_picked(@rubrick)
	@border.ready_to_be_picked(@msc)
	# @rubrick.continue_journey_by
	# @msc.continue_journey_by
end


get_instances