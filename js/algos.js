//PSUEDOCODE FOR findLongestPhrase:

	//Make function that will take array of words/phrases and return the longest.
	//define a longestword variable, and set it equal to an empty string.
	//loop through the inputted array, and compare the length of each element to the length of longestword.
	//if the array element is longer, change longestword to equal the array element.
	//if the array element is not longer, skip to the next element.
	//once loop is completed, return longestword.

	function findLongestPhrase(phraseEntries) {
		var length = 0
		var longest;
		for(var i=0; i < phraseEntries.length; i++)
			if (phraseEntries[i].length > length) {
				var length = phraseEntries[i].length;
				longest = phraseEntries[i];
			}
			console.log(longest);
		}

//------------------------------------------------------------------------------------

//PSUEDOCODE FOR compareObjects:

	//Make a function that compares two objects and returns true if they share a matching key/value pair.
	//Make two arrays - one to contain each of the objects key/value pairs.
	//Make a test variable and set it to false
	//Loop through the arrays, comparing each element in one to each element in the other array
	//create an if conditional that will change the test variable value to true, if any of the values are equivalent.

	function compareObjects(object1, object2) {
		object1Array = [];
		object2Array = [];
		objectsEqual = false;

		for(var key in object1) {
			if(object1.hasOwnProperty(key)) {
				object1Array.push (key + "-" + object1[key]);
			}
		}
		for(var key in object2) {
			if(object2.hasOwnProperty(key)) {
				object2Array.push (key + "-" + object2[key]);
			}
		}
		objectLength = object1Array.length
		if(object2Array.length > object1Array.length) {
			objectLength = object2Array.length;
		}

		for(var i = 0; i < objectLength; i++) {
			for(var i2 = 0; i2 < objectLength; i2++) {
				if(object1Array[i] == object2Array[i2]){
					objectsEqual = true;
				}
			}
		}
		console.log(objectsEqual);
	}

//------------------------------------------------------------------------------------

//PSUEDOCODE FOR generateRandom:

	//Make a function that receives an integer and returns an array of strings 
	//with the length designated by the integer argument.
	//Make a variable with an empty array
	//Set a loop to run as many times as the number passed in from the function argument
	//on each loop iteration, generate a random string between 1 and 10 characters, and add
	//it to the array in the variable noted above.

	function generateRandom(int) {
		var stringArray = [];
		for (var i = 0; i < int; i++) {
			var newString = "";
			var possibleCharacters = "abcdefghijklmnopqrstuvwxyz";
			var letters = Math.floor((Math.random() * 10) + 1);
				for(var i2 = 0; i2 < letters; i2++){
					newString += possibleCharacters.charAt(Math.random() * possibleCharacters.length);	
				}	
			stringArray.push(newString);
		}
		console.log(stringArray);
		return stringArray;
	}

//------------------------------------------------------------------------------------

//Driver code for findLongestPhrase:
var phraseEntries = ["test", "testing", "longesttest", "shorter"];
findLongestPhrase(phraseEntries);

//------------------------------------------------------------------------------------

//Driver code for compareObjects:
var testObject1 = {test: "yes", eggs: "no", bla: "bla"};
var testObject2 = {blue: "perhaps", red: "no", test: "yes"};
compareObjects(testObject1, testObject2);

//------------------------------------------------------------------------------------

//Driver code for generateRandom:
	//PSUEDOCODE:
		//Set up a loop to run 10 times. 
		//For each iteration, run generateRandom(3), and save result as a variable.
		//Feed variable resulting from generateRandom into findLongestPhrase.
for(var i = 0; i < 10; i++) {
	var wordEntries = generateRandom(3);
	findLongestPhrase(wordEntries);
}
