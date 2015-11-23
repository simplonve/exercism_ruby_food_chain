class Verset
	attr_accessor :animal, :petite_farce
	def initialize(animal, petite_farce)
		@animal = animal
		@petite_farce = petite_farce
	end

	def build
		verset = ""
		animals.each do |a, s|
		    verset = s + "\n"+ verset if animal != a
			break if animal == a
		end
		
        "I know an old lady who swallowed a #{animal}.\n#{petite_farce}#{animals[animal]}\n#{verset}"
	end

	def animals
		{:fly => "I don't know why she swallowed the fly. Perhaps she'll die.", 
	    :spider => "She swallowed the spider to catch the fly.", 
		:bird => "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.", 
		:cat =>"She swallowed the cat to catch the bird.", 
		:dog =>"She swallowed the dog to catch the cat.", 
		:goat =>"She swallowed the goat to catch the dog.", 
		:cow => "She swallowed the cow to catch the goat.", 
		}
	end
end

class FoodChain
	def self.song
"#{Verset.new(:fly, "").build}
#{Verset.new(:spider, "It wriggled and jiggled and tickled inside her.\n").build}
#{Verset.new(:bird, "How absurd to swallow a bird!\n").build}
#{Verset.new(:cat, "Imagine that, to swallow a cat!\n").build}
#{Verset.new(:dog, "What a hog, to swallow a dog!\n").build}
#{Verset.new(:goat, "Just opened her throat and swallowed a goat!\n").build}
#{Verset.new(:cow, "I don't know how she swallowed a cow!\n").build}
I know an old lady who swallowed a horse.
She's dead, of course!
"
	end
end
