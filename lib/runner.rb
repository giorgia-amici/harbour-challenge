require './container.rb'
require './harbour.rb'
require './lorry.rb'
require	'./ship.rb'
require "date"

def get_instances
	@vigo = Harbour.new('Vigo')
	@pequod = Ship.new
	@nautilus = Ship.new
	@camion = Lorry.new
	@trucky = Lorry.new
	@trucky.capacity = 10
	@rubrick = Container.new
	@rubrick.today_date
	@rubrick.delivery_date = "8-10-2014"
	@msc = Container.new
	@msc.today_date
	@msc.delivery_date = "8-10-2014"
	@makro = Container.new
	@makro.today_date
	@makro.delivery_date = "9-10-2014"
	@vigo.receive_container(@makro)
	@vigo.receive_container(@rubrick)
	@vigo.receive_container(@msc)



end


get_instances