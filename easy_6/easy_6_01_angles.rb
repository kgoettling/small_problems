DEGREE = "\xC2\xB0"
DEG_SYMS = ["'", "\""]

def dms(angle_f)
  degrees = ''
  div, rem = angle_f.divmod(1)
  degrees << (div % 360).to_s + DEGREE
  
  DEG_SYMS.each do |sym|
    rem *= 60
    div, rem = rem.divmod(1)
    degrees << format("%02d", div.to_s) + sym
  end
  
  degrees
end

puts dms(30) #== %(30°00'00")
puts dms(-76.73) #== %(76°43'48")
puts dms(254.6) #== %(254°36'00")
puts dms(93.034773) #== %(93°02'05")
puts dms(0) #== %(0°00'00")
puts dms(720.65) #== %(360°00'00") || dms(360) == %(0°00'00")