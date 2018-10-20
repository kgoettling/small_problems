def letter_case_count(str)
  letter_counts = { lowercase: 0, uppercase: 0,
                    neither: 0 }
  
  str.chars.each do |chr|
    letter_counts[cap(chr)] += 1
  end
  
  letter_counts
end

def cap(chr)
  case chr
  when /[A-Z]/ then :uppercase
  when /[a-z]/ then :lowercase
  else              :neither
  end
end

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }