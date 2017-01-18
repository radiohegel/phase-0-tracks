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
	grocery_hash
end

grocery_list = create_list("carrots apples cereal pizza")

# Method to add an item to a list
# input: list, item name, and optional quantity
# steps: insert item into list; if optional quantity is part of argument, change value from one. 
# output: updated hash

def add_item!(list, item, qty=1)
	list[item] = qty
	list
end

p add_item!(grocery_list, "peas")
p add_item!(grocery_list, "oranges", 3)

# Method to remove an item from the list
# input: list, item to remove
# steps: delete item from list hash
# output: updated hash

def remove_item!(list, item)
	list.delete(item)
	list
end

p remove_item!(grocery_list, "cereal")

# Method to update the quantity of an item
# input: list, item, new qty
# steps: match item to existing hash key, and reassign value to new qty. 
# output: updated hash

def update_qty!(list, item, qty)
	counter = 0
	list.each do |key, value|
		break if key == item
		counter += 1
	end
	if counter == list.length
		response = "Sorry, that item isn't in the list"
		return response
	else
		list[item] = qty
	end
	list
end

p update_qty!(grocery_list, "carrots", 3)
p update_qty!(grocery_list, "beansprouts", 4)

# Method to print a list and make it look pretty
# input: grocery list
# steps: print sentence with data from hash interpolated in. 
# output: strings with grocery items and qtys.

def print_list(list)
	list.each do |list, qty|
		puts "You need #{qty} #{list}"
	end
end

print_list(grocery_list)

