class PigLatinizerOrig

  attr_accessor :text

  def initialize(text)
    @text=text
  end

  def separate_words
    @text.split(" ")
  end

  def convert_words
    self.separate_words.collect do |w|
      if w[0].downcase =~ /[aeiou]/
        w+"way"
      elsif w.downcase =~ /^(th)|^(gr)|^(ch)|^(sc)/
        w.split("").drop(2).join("")+w[0].downcase+w[1]+"ay"
      else
        w.split("").drop(1).join("")+w[0].downcase+"ay"
      end
    end
  end

  def pig_out
    self.convert_words.join(" ").capitalize
  end

end
