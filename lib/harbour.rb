class Harbour
	attr_accessor :cargo, :name

	def initialize(name = 'harbour1')
		@name = name
		@wharehouse = []
	end

	def receive_container(container)
		@wharehouse << container
	end

	def remove_container(container)
		@wharehouse.each { |box| @wharehouse.delete(container) if box.id == container.id }
	end

	def deliver_container(container, transport)
		transport.cargo << container
		remove_container(container)
	end

end