//define a function that takes a string
//take the length of the string, and subtract one to determine the final index position of the string
//beginning with the last position in the string, add each letter to a new string, then increment backwards by subtracting one from the index counter.


	
var reversedWord = ""

function printBackwards(word) {
	for (var i = word.length - 1; i > -1; i-=1) {
		reversedWord += (word[i]);
	}
}


printBackwards("hello")

var test = "yes";
if (test == "yes") {
	console.log(reversedWord);
}
else {
	return false;
}




