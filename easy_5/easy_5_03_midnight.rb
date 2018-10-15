HOURS_PER_DAY = 24
MIN_PER_HOUR = 60

def after_midnight(time)
  hours = time[0..1].to_i % HOURS_PER_DAY
  min = time[-2..-1].to_i

  hours * MIN_PER_HOUR + min
end

def before_midnight(time)
  min = MIN_PER_HOUR - time[-2..-1].to_i
  hours = (HOURS_PER_DAY - time[0..1].to_i) % HOURS_PER_DAY
  hours -= 1 if min > 0
  
  hours * MIN_PER_HOUR + min
end


puts after_midnight('00:00') == 0
puts before_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts before_midnight('12:34') == 686
puts after_midnight('24:00') == 0
puts before_midnight('24:00') == 0