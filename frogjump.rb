def solution(x, y, d)
  return 0 if (y - x) == 0
  return 1 if (y - x) < d
  min_steps = (y - x) / d
  min_steps = min_steps + 1 if ((y - x) % d) != 0
  min_steps
end

puts solution(200,200,1) == 0
puts solution(10,85,30) == 3
puts solution(0,85,30) == 3
puts solution(0,2,30) == 1
puts solution(0,100,30) == 4
puts solution(50,55,30) == 1
puts solution(10,20,1) == 10
puts solution(99,100,200) == 1
puts solution(200,200,200) == 0
puts solution(200,1200,1200) == 1
puts solution(0,1200,1200) == 1
puts solution(1,2,1) == 1
puts solution(1,2,1) == 1
