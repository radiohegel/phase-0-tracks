//Make function that will take array of words/phrases and return the longest.
//define a longestword variable, and set it equal to an empty string.
//loop through the inputted array, and compare the length of each element to the length of longestword.
//if the array element is longer, change longestword to equal the array element.
//if the array element is not longer, skip to the next element.
//once loop is completed, return longestword.


var phraseEntries = ["test", "testing", "longesttest", "shorter"];

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

findLongestPhrase(phraseEntries);