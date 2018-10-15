def cleanup(str)
  str.gsub(/[^[:alnum:]]/, ' ').squeeze(' ')
end

def cleanup2(str)
  prev_char = ''
  
  str.chars.map do |chr|
    case chr
    when ("A".."z") then prev_char = chr
    when ' '        then
      prev_char == ' ' ? '' : ' '
    else                 prev_char = ' '
    end
  end.join
end

puts cleanup2("---what's my +*& line?") #== ' what s my line '
