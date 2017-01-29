var colors = ["blue", "green", "purple", "pink"];
var horse_names = ["Ed", "Beatrice", "Misty","Dumbledore"];

colors.push("brown");
horse_names.push("John");


// PSEUDOCODE
// object[horse_names[i]] = colors[i]

var horses = { };

for (var i = 0; i < horse_names.length; i++){
	horses[horse_names[i]] = colors[i];
}

console.log(horses);

function Car(year, color, doors, convertible) {
	this.year = year;
	this.color = color;
	this.doors = doors;
	this.convertible = convertible;

	console.log("Car initialization complete!");
	console.log(this.year, this.color, this.doors, this.convertible);

	this.isItAConvertible = function() {
		if(this.convertible) {
			console.log("The " + this.color + " " + this.year + " is a convertible");
		}
		else {
			console.log("The " + this.color + " " + this.year + " is not a convertible");
		}

	}

	this.startCar = function() {
		console.log("Starting the " + this.color + " one");
	}
}

var gerald = new Car(1987, "red", 16, false);
console.log(gerald);

gerald.isItAConvertible();
gerald.startCar();

var nancy = new Car(2017, "grey", 4, true);
var ed = new Car(2008, "blue", 2, false);
var fred = new Car(1906, "black", 0, false);

nancy.startCar();
ed.startCar();
fred.startCar();

nancy.isItAConvertible();
fred.isItAConvertible();

