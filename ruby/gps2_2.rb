# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # take a string of grocery items, and split into array
  # set default quantity
  # print the list to the console [can you use one of your other methods here?]
# output: hash w/ key(item) value(qty)
def create_list(items)
	list_array = items.split(' ')
	grocery_hash = { }
	list_array.each do |items|
		grocery_hash[items] = 1
	end
	p grocery_hash

end

create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: insert item into list; if optional quantity is part of argument, change value from one. 
# output: updated hash

# Method to remove an item from the list
# input:
# steps:
# output:

# Method to update the quantity of an item
# input:
# steps:
# output:

# Method to print a list and make it look pretty
# input:
# steps:
# output:

