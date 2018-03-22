class PigLatinizer

  def piglatinize(word)
    # i can do this
    vowels = ['a', 'e', 'i', 'o', 'u']

    # if word beings with vowel
    if vowels.include? word[0].downcase
      word + 'way'
      # feel like this isnt the tightest. ill go w/ it
    # if second letter is a vowel
    elsif vowels.include? word[1].downcase
      word[1..-1] + word[0] + 'ay'
    else

      # im sure this could be tighter
      vowelSounds = []
      word.split('').each do |i|
        break if vowels.include? i

        vowelSounds << i
      end

      # word.slice(0, vowelSounds.size)+ word[vowelSounds.size..-1]+vowelSounds.join('')
      word[vowelSounds.size..-1]+vowelSounds.join('')+'ay'

  end

  end

end
