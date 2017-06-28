class String
    define_method(:title_case) do
      split_sentence = self.split() #split the sentnce to single words
      split_sentence.each() do |word| #for each first letter in the split words
        word.capitalize!() #capitalize the first letter of the word
      end
      split_sentence.join(" ") #join the split words
    end
  end