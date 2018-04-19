
[1mFrom:[0m /home/mtrussell/sinatra-mvc-lab-cb-000/models/piglatinizer.rb @ line 17 PigLatinizer#piglatinize:

    [1;34m10[0m: [32mdef[0m [1;34mpiglatinize[0m(string)
    [1;34m11[0m:   [32mif[0m !string.include?([31m[1;31m'[0m[31m [1;31m'[0m[31m[0m)
    [1;34m12[0m: 
    [1;34m13[0m:     [32mif[0m string[[1;34m0[0m] =~ [35m[1;35m/[0m[35m[aeiou][1;35m/[0m[35m[0m
    [1;34m14[0m:       string << [31m[1;31m'[0m[31mway[1;31m'[0m[31m[0m
    [1;34m15[0m:     [32melse[0m
    [1;34m16[0m:       string_arr = string.split([35m[1;35m/[0m[35m([aeiou].*)[1;35m/[0m[35m[0m)
 => [1;34m17[0m:       binding.pry
    [1;34m18[0m:     [32mend[0m
    [1;34m19[0m:     string
    [1;34m20[0m: 
    [1;34m21[0m:   [32melse[0m
    [1;34m22[0m:     pig_arr = []
    [1;34m23[0m:     arr = string.split([31m[1;31m'[0m[31m [1;31m'[0m[31m[0m)
    [1;34m24[0m:     arr.each [32mdo[0m |word|
    [1;34m25[0m:       [32mif[0m word[[1;34m0[0m] =~ [35m[1;35m/[0m[35maeiou[1;35m/[0m[35m[0m
    [1;34m26[0m:         word << [31m[1;31m'[0m[31mway[1;31m'[0m[31m[0m
    [1;34m27[0m:       [32melse[0m
    [1;34m28[0m:         front_letter = word.split([35m[1;35m/[0m[35m([aeiou].*)[1;35m/[0m[35m[0m)
    [1;34m29[0m:         word.push(front_letter).push.([31m[1;31m'[0m[31may[1;31m'[0m[31m[0m)
    [1;34m30[0m:       [32mend[0m
    [1;34m31[0m:       pig_arr << word
    [1;34m32[0m:     [32mend[0m
    [1;34m33[0m:     pigs = pig_arr.join([31m[1;31m'[0m[31m [1;31m'[0m[31m[0m)
    [1;34m34[0m:   [32mend[0m
    [1;34m35[0m: [32mend[0m

