def short_long_short(str1, str2)
  arr = ['', str1, str2]
  comp = str1.size <=> str2.size
  
  "#{arr[-comp]}#{arr[comp]}#{arr[-comp]}"
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"