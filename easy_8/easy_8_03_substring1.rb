def substrings_at_start1(str)
  sub_str = ''
  strings = []
  
  str.chars.each do |chr|
    sub_str += chr
    strings << sub_str
  end
  
  strings
end

def substrings_at_start(str)
  sub_str = ''
  str.chars.each_with_object([]) do |chr, strings|
    sub_str += chr
    strings << sub_str
  end
end

puts substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']