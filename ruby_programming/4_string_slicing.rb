a = "hello there"

a[1]                   #=> "e"
a[2, 3]                #=> "llo"
a[2..3]                #=> "ll"        a[   startindex .. endIndex  ]

a[-3, 2]               #=> "er"
a[7..-2]               #=> "her"
a[-4..-2]              #=> "her"
a[-2..-4]              #=> ""

a[11, 0]               #=> ""
a[11]                  #=> nil
a[12, 0]               #=> nil
a[12..-1]              #=> nil

a[/[aeiou](.)\1/]      #=> "ell"
a[/[aeiou](.)\1/, 0]   #=> "ell"
a[/[aeiou](.)\1/, 1]   #=> "l"
a[/[aeiou](.)\1/, 2]   #=> nil

a[/(?<vowel>[aeiou])(?<non_vowel>[^aeiou])/, "non_vowel"] #=> "l"
a[/(?<vowel>[aeiou])(?<non_vowel>[^aeiou])/, "vowel"]     #=> "e"

a["lo"]                #=> "lo"
a["bye"]               #=> nil
