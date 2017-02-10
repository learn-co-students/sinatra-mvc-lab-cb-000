class PigLatinizer

  def initialize
  end

  def piglatinize(w)
      if w[0].downcase =~ /[aeiou]/
        w+"way"
      elsif w.downcase =~ /^(spr)|^(scr)|^(str)/
        w.split("").drop(3).join("")+w[0]+w[1]+w[2]+"ay"
      elsif w.downcase =~ /^(th)|^(gr)|^(ch)|^(sc)|^(pl)|^(pr)|(^sk)|^(wh)/
        w.split("").drop(2).join("")+w[0]+w[1]+"ay"
      else
        w.split("").drop(1).join("")+w[0]+"ay"
      end
  end

  def to_pig_latin(text)
    s=text.split(" ")
    text_converted = s.collect do |w|
      self.piglatinize(w)
    end
    text_converted.join(" ")
  end

end
