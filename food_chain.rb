class FoodChain
	def self.verset(animal, petite_farce)
		verset = "I know an old lady who swallowed a #{animal}.
#{petite_farce}\n"
		animals.each do |a, s|
			verset += s if animal != a
			break if animal == a
		end
		return verset + animals[animal]
	end

	def self.animals
		animals = {:fly => "I don't know why she swallowed the fly. Perhaps she'll die.", 
			:spider => "She swallowed the spider to catch the fly.", 
			:bird => "She swallowed the bird to catch the spider that wriggled and jiggled and tickled inside her.", 
			:cat =>"She swallowed the cat to catch the bird.", 
			:dog =>"", 
			:goat =>"", 
			:cow => "", 
			:horse =>""}
	end

	def self.song

		song = "#{verset(:fly, "")}

#{verset(:spider, "It wriggled and jiggled and tickled inside her.")}

I know an old lady who swallowed a bird.
How absurd to swallow a bird!
#{animals[:bird]}
#{animals[:spider]}
#{animals[:fly]}

I know an old lady who swallowed a cat.
Imagine that, to swallow a cat!
#{animals[:cat]}
#{animals[:bird]}
#{animals[:spider]}
#{animals[:fly]}

I know an old lady who swallowed a dog.
What a hog, to swallow a dog!
She swallowed the dog to catch the cat.
#{animals[:cat]}
#{animals[:bird]}
#{animals[:spider]}
#{animals[:fly]}

I know an old lady who swallowed a goat.
Just opened her throat and swallowed a goat!
She swallowed the goat to catch the dog.
She swallowed the dog to catch the cat.
#{animals[:cat]}
#{animals[:bird]}
#{animals[:spider]}
#{animals[:fly]}

I know an old lady who swallowed a cow.
I don't know how she swallowed a cow!
She swallowed the cow to catch the goat.
She swallowed the goat to catch the dog.
She swallowed the dog to catch the cat.
#{animals[:cat]}
#{animals[:bird]}
#{animals[:spider]}
#{animals[:fly]}

I know an old lady who swallowed a horse.
She's dead, of course!
"
	end
end