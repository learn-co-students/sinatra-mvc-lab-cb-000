class PigLatinizer

  def piglatinize(text)
    pigs = text.split(" ")
    hmm = []
    pigs.each do |w|
      cutoff = w.index(/[aeiou]/i)
      if cutoff > 0
        hmm << ( w.slice(cutoff,w.length)+w.slice(0,cutoff)+"ay" )
      else
        hmm << ( w.slice(cutoff,w.length)+w.slice(0,cutoff)+"way" )
      end
    end
    hmm.join(" ")
  end



  def to_pig_latin(text)
    pigs = text.split(" ")
    hmm = []
    pigs.each do |w|
      cutoff = w.index(/[aeiou]/i)
      if cutoff > 0
        hmm << ( w.slice(cutoff,w.length)+w.slice(0,cutoff)+"ay" )
      else
        hmm << ( w.slice(cutoff,w.length)+w.slice(0,cutoff)+"way" )
      end
    end
    hmm.join(" ")
  end
end
