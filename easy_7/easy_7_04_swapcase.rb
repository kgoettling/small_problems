def swapcase(str)
  str.chars.map { |letter| change_case(letter) }.join
end

def change_case(chr)
  case chr
  when /[A-Z]/ then chr.downcase
  when /[a-z]/ then chr.upcase
  else              chr
  end
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'