def substrings(str)
  strings = []
  str.chars.each_with_index do |chr, index1|
    index2 = index1
    sub_str = ''
    while index2 < str.size
      sub_str += str[index2]
      strings << sub_str
      index2 += 1
    end
  end
  strings
end

p substrings('abcde') == [
   'a', 'ab', 'abc', 'abcd', 'abcde', 
   'b', 'bc', 'bcd', 'bcde',
   'c', 'cd', 'cde',
   'd', 'de',
   'e'
 ]