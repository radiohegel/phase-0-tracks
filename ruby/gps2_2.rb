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

#REFLECTION
#This was definitely good practice with pseudocoding. I'm still feeling a little shakey about
#best practices for pseudocoding, but I'm getting a better feel for it.
#Marcela and I decided to use hashes so we could store the qty as a value for each list item as a value.
#We figured this would be advantageous in that it simplifies keeping track of the item quantity pairs.
#A method returns whatever the result is of the operation in the final line (unless an exlicit return is specified). That return value
#It seems that you can pass pretty much any kind of data into a method, so long as you treat the argument
#according to what it is throughout the method. We passed strings, hashes, and integers into our methods.
#You can pass information from one method to another by returning a variable value and passing it into the next method.
#I think that the idea of dangerous methods makes a lot more sense to me now. I'm still confused a bit about 
#exactly when a hash is more advantageous than an array, and vice versa.

