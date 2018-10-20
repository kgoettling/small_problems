def staggered_case(str, non_alpha='ignore')
  regex_value = /[A-Za-z]/
  regex_value = /.*/ if non_alpha != 'ignore'
  
  case_switcher = false
  
  str.chars.map do |chr|
    if chr =~ regex_value
      case_switcher = !case_switcher
      case_switcher ? chr.upcase : chr.downcase
    else
      chr
    end
  end.join
end

puts staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
puts staggered_case('ALL CAPS') == 'AlL cApS'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'