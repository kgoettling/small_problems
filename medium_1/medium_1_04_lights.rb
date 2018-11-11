def lights(n)
  counter = 1
  step = 1
  switches = Hash.new(false)
  on_switches = []
  
  while step <= n
    while counter <= n
      switches[counter] = !switches[counter]
      counter += step
    end
    step += 1
    counter = step
  end
  
  switches.each {|switch, status| on_switches << switch if status}
  on_switches
end

p lights(5)
p lights(10)
p lights(100)
p lights(1000)
p lights(10000)