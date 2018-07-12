class PigLatinizer
  
  
  def initialize
    
  end
  
  def piglatinize(text)
    consonant = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
    vowel = ["a","e","o","u","i"]
    
    text_input = text.split(" ")
    
    
    
    if text_input.size > 1 
      
    result = []
    
    text_input.each do |word|
      
      array = word.split("")
      
      if consonant.include?(array[0].downcase) && consonant.include?(array[1].downcase) && consonant.include?(array[2].downcase) && vowel.include?(array[3].downcase)
        result << array[3..-1].join("") + array[0..2].join("") + "ay"
      end
      if consonant.include?(array[0].downcase) && consonant.include?(array[1].downcase) && consonant.include?(array[2].downcase) && consonant.include?(array[3].downcase)
        result << "ay" + word
      end
      if vowel.include?(array[0].downcase)
        result << array.join("") + "way"
      end
      if consonant.include?(array[0].downcase) && vowel.include?(array[1].downcase)
        result << array[1..-1].join("") + array[0] + "ay"
      end
      if consonant.include?(array[0].downcase) && consonant.include?(array[1].downcase) && vowel.include?(array[2].downcase)
        result << array[2..-1].join("") + array[0..1].join("") + "ay"
      end
      
    end
    
    
    return result.join(" ")
    
    else
      
      array = text.split("")
      
      if consonant.include?(array[0].downcase) && consonant.include?(array[1].downcase) && consonant.include?(array[2].downcase)
        return "ay" + array.join("")
      end
      if vowel.include?(array[0].downcase)
        return array.join("") + "way"
      end
      if consonant.include?(array[0].downcase) && vowel.include?(array[1].downcase)
        return array[1..-1].join("") + array[0] + "ay"
      end
      if consonant.include?(array[0].downcase) && consonant.include?(array[1].downcase) && vowel.include?(array[2].downcase)
        return array[2..-1].join("") + array[0..1].join("") + "ay"
      end
      
    end
    
  end
end