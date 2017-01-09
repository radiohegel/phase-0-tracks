grocery_store_inventory = {
	meats: {
		red_meat: "beef",
		poultry: ["chicken", "turkey"] 
	},
	veggies: ["tomato", "onion", "carrot"],
	fruit: ["apple", "orange"],
	dessert: {
		icecream: ["chocolate", "strawberry"],
		cake: ["carrot"]
	}


}
puts grocery_store_inventory[:meats][:poultry][1]
#returns "turkey"

grocery_store_inventory[:dessert][:cake].push("red velvet")
puts grocery_store_inventory[:dessert][:cake]
#returns "carrot", "red velvet"

grocery_store_inventory[:dessert][:cake][1] = ["chocolate frosting", "vanilla frosting"]
puts grocery_store_inventory[:dessert][:cake][1][1]
#returns "vanilla frosting"