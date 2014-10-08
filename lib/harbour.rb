class Harbour
	attr_accessor :cargo, :name, :wharehouse

	def initialize(name = 'harbour1')
		@name = name
		@wharehouse = []
	end

	def receive_container(container)
		@wharehouse << container
	end

	def remove_container(container)
		@wharehouse.delete_if{ |box| box.id == container.id }
	end

	def same_destination?(container, transport)
		container.destination == transport.destination
	end




	def deliver_container(container, transport)
		if container.delivered_today? 
			if same_destination?(container, transport)
				if !transport.full?
				transport.cargo << container
				remove_container(container)
				else
				"I am full"
				end
			else
				"Different destinations "
			end
		else
			"Not to be delivered today"
		end
	end





end