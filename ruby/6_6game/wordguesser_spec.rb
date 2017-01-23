require_relative 'wordguesser'

describe Wordguesser do
	let(:word) {Wordguesser.new("testword")}

	it "stores inputted word as an array" do
		expect(word.storeinput).to eq ["t", "e", "s", "t", "w", "o", "r", "d"]
	end

	it "calculates word length and determines number of guesses" do
		expect(word.guessnum).to eq 12
	end

	it "creates feedback array with blanks eqaul to number of letters" do
		expect(word.makefeedbackarray).to eq ["_", "_", "_", "_", "_", "_", "_", "_"]
	end
	
	it "changes _ to letter in feedback array when guesses are matched" do
		expect(word.checkguess("t")).to eq ["t", "_", "_", "t", "_", "_", "_", "_"]
	end

	
end