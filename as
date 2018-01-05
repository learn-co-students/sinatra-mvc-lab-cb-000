
[1mFrom:[0m /home/101041699-74976/code/labs/sinatra-mvc-lab-cb-000/models/piglatinizer.rb @ line 23 PigLatinizer#piglatinize:

     [1;34m7[0m: [32mdef[0m [1;34mpiglatinize[0m(word)
     [1;34m8[0m:   @word = word.downcase
     [1;34m9[0m:   [1;34m#binding.pry[0m
    [1;34m10[0m:   appendings = [31m[1;31m"[0m[31m[1;31m"[0m[31m[0m
    [1;34m11[0m:   deletions = [31m[1;31m"[0m[31m[1;31m"[0m[31m[0m
    [1;34m12[0m:   a = @word.scan([35m[1;35m/[0m[35m.{1,1}[1;35m/[0m[35m[0m)
    [1;34m13[0m:   a.each [32mdo[0m |w|
    [1;34m14[0m:     [32mif[0m w =~ [35m[1;35m/[0m[35m[aeoui][1;35m/[0m[35m[0m
    [1;34m15[0m:       appendings << [31m[1;31m"[0m[31mway[1;31m"[0m[31m[0m [32mif[0m appendings != [31m[1;31m"[0m[31may[1;31m"[0m[31m[0m
    [1;34m16[0m:       [32mbreak[0m
    [1;34m17[0m:     [32melsif[0m w =~ [35m[1;35m/[0m[35m[bcdfghjklmnpqrstvwxyz][1;35m/[0m[35m[0m
    [1;34m18[0m:       appendings << [31m[1;31m"[0m[31may[1;31m"[0m[31m[0m [32mif[0m appendings != [31m[1;31m"[0m[31may[1;31m"[0m[31m[0m
    [1;34m19[0m:       deletions << w
    [1;34m20[0m:     [32mend[0m
    [1;34m21[0m:     [1;34m#binding.pry[0m
    [1;34m22[0m:   [32mend[0m
 => [1;34m23[0m:   binding.pry
    [1;34m24[0m:   a.delete(deletions)
    [1;34m25[0m:   deletions << appendings
    [1;34m26[0m:   a << deletions
    [1;34m27[0m:   a = a.join([31m[1;31m"[0m[31m[1;31m"[0m[31m[0m)
    [1;34m28[0m:   [1;34m#binding.pry[0m
    [1;34m29[0m:   @word = a
    [1;34m30[0m:   @word
    [1;34m31[0m: [32mend[0m

