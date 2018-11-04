def palindromes(str)
  substrings(str).map do |sub_str| 
    chk_str = sub_str.gsub(/[^[:alnum:]]/, '')
    chk_str if chk_str == chk_str.reverse && chk_str.size > 1
  end.delete_if { |item| item == nil }
end

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

p palindromes('abcd') #== []
p palindromes('madam') #== ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') #== [
   # 'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
   # 'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
   # '-madam-', 'madam', 'ada', 'oo'
# ]
p palindromes('knitting cassettes') #== [
  # 'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]