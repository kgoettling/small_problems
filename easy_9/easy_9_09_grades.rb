def get_grade(g1, g2, g3)
  avg = [g1, g2, g3].sum / 3.0
  inf = 1.0 / 0.0
  
  case avg
  when (100..inf) then 'A+'
  when (90..100)  then 'A'
  when (80...90)  then 'B'
  when (70...80)  then 'C'
  when (60...70)  then 'D'
  else                 'F'
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"
p get_grade(0, 0, 0) == "F"
p get_grade(120, 100, 110) == "A+"