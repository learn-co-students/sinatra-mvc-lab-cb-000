class PigLatinizer
  
  attr_accessor :user_phrase
  
  def piglatinize(user_phrase)
    if user_phrase.split(" ").length == 1 
      piglatinize_word(user_phrase)
    else 
      piglatinize_sentence(user_phrase)
    end
  end
  
 
   def piglatinize_word(user_phrase)
     latinized = ""
     array = user_phrase.split(/[aeiou]/)
     if ["a","e","i","o","u","A","I","E","O","U"].include?(user_phrase[0,1])
       latinized = user_phrase + "way"
     else 
       latinized = user_phrase.sub!(array[0],"") + array[0] + "ay"
     end
     latinized
     
   end 
   
   def piglatinize_sentence(user_phrase)
    
      word_array = user_phrase.split(" ")
      word_array.collect { |x| piglatinize_word(x) }.join(" ")
      
   end 
  
end