class TodoList

	def initialize(list)
		@list = list
	end

	def get_items
		@list
	end

	def add_item(item)
		@list << item
	end

	def delete_item(deletion)
		@list.delete(deletion)
	end

	def get_item(ind)
		item = @list[ind]
		item
	end
end