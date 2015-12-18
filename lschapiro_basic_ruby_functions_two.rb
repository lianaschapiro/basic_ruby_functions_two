# 1. Create a program to analyze a large block of text and report back on the frequency of each word in the text.

# Start by storing the text within a hash where each word is a key with the word's value being the amount of times it has been used in the block:
# ruby {the: 10, john: 1, of: 15}
# Once you've created this hash, return the word that has been used the most
# When you're done, encapsulate your script inside of a method that can analyze any block of text fed to it

def analyze_text (document)
	document.downcase!
	doc_array = document.split(" ")
	doc_hash = {}
	i = 0
	while i < doc_array.length
		if doc_hash.has_key?(doc_array[i])
			doc_hash[doc_array[i]] +=1
		else doc_hash[doc_array[i]] =1
		end
		i+=1
	end
	best_word = doc_hash.sort_by{|k, v| v}.last[0]
	puts "The most frequent word is " + best_word
end

analyze_text ("You you you are are silly silly silly silly silly silly")

# Bonus assignment: Create a "choose your own adventure" Ruby game using the gets ruby method to get user input from the command line. Have the game send the user down many different paths depending on the input that they enter. Use objects to store data about the user and different items they could collect along the way. Seehttp://en.wikipedia.org/wiki/Interactive_fiction (Links to an external site.) for a more in-depth description of "choose your own adventure"-style command line games.

# Recommended Activity
# Complete as much of the "Introduction to Ruby" track on Codecademy as you can. http://www.codecademy.com/courses/ruby-beginner-en-d1Ylq?curriculum_id=5059f8619189a5000201fbcb) (Links to an external site.)