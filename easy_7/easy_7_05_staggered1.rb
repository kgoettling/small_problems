def staggered_case(str, start_case='upper')
  case_switcher = false
  case_switcher = true if start_case == 'lower'
  
  str.chars.map do |chr|
    case_switcher = !case_switcher
    case_switcher ? chr.upcase : chr.downcase
  end.join
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'