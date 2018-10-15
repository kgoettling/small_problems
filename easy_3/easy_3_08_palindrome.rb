def palindrome?(str)
  str == str.reverse
end

def palindrome2?(str)
  str.chars.each_with_index do |chr, i|
    return false if chr != str.chars[-(i + 1)]
  end
  
  true
end

def palindrome3?(arr_or_str)
  i = 0
  
  while i < arr_or_str.size
    return false if arr_or_str[i] != arr_or_str[-(i + 1)]
    i += 1
  end
  
  true
end

puts palindrome2?('madam') == true
puts palindrome2?('Madam') == false          # (case matters)
puts palindrome2?("madam i'm adam") == false # (all characters matter)
puts palindrome2?('356653') == true

puts palindrome3?('madam') == true
puts palindrome3?(['M', 'a', 'd', 'a', 'm']) == false          # (case matters)
puts palindrome3?("madam i'm adam") == false # (all characters matter)
puts palindrome3?([3, 5, 6, 6, 5, 3]) == true

