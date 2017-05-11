class PigLatinizer

 attr_accessor :words, :first_vowel_index


 def initialize

 end

def piglatinize(word)
  @words = word
   new_word = ""

   @first_vowel_index = @words.index(/[aeiou AEIOU]/)

      if @words.size == 1  #only one letter
         puts @words
         new_word = self.vowel_first
      elsif @words.index(/[aeiou AEIOU]/) == 0 # word starts with vowel but more than one letter
        new_word = self.vowel_first
      elsif @words.index(/[aeiou AEIOU]/) == 1 # word has vowel as second letter or after
        new_word = self.one_consonant
      else
        new_word = self.multiple_consonant
      end
 new_word
end

def to_pig_latin(sentence)
     sentence_array = sentence.split(" ")
     new_sentence_array = sentence_array.collect {|word| piglatinize(word)}
     new_word = new_sentence_array.join(" ")

     new_word
end

 def one_consonant
   word_array = @words.split(//)
   first_letter = word_array.first
   word_array.shift
   word_array.push(first_letter)
   word_array.push('ay')
   new_word = word_array.join
  # "#{new_word} one_consonant"  #what I've done to get this could be done easier, like in the next method
 end



 def multiple_consonant

   word_size = @words.size

   first_consonants = @words.slice(0,@first_vowel_index)
   rest_of_word = @words.slice(@first_vowel_index,word_size)
   new_word = rest_of_word + first_consonants + "ay"
  # "#{new_word} multiple_consonant"
 end

 def vowel_first

     new_word = @words + "way"

  #  "#{new_word} vowel_first"

 end

end
