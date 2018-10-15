SUFFIXES = { '1' => 'st', '2' => 'nd', '3' => 'rd' }
EXCEPTIONS = ['11', '12', '13']

def century(year)
  if (year.to_f / 100) > (year / 100)
    cent_str = ((year + 100) / 100).to_s
  else
    cent_str = (year / 100).to_s
  end
  
  suffix = SUFFIXES[cent_str[-1]]
  suffix = 'th' if EXCEPTIONS.include?(cent_str[-2..-1])
  suffix ? cent_str + suffix : cent_str + 'th'
end


puts century(2000) == '20th'
puts century(2001) == '21st'
puts century(1965) == '20th'
puts century(256) == '3rd'
puts century(5) == '1st'
puts century(10103) == '102nd'
puts century(1052) == '11th'
puts century(1127) == '12th'
puts century(11201) == '113th'