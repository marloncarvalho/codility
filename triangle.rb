def solution(a)
  return 0 if a.length < 3

  a = a.sort
  for x in (0..a.length-3)
    return 1 if a[x] + a[x+1] > a[x+2]
  end

  return 0
end

puts "Solution 1: #{solution([10,50,5,1])}" #1,5,10,50
puts "Solution 2: #{solution([10,2,5,1,8,20])}" #1,2,5,8,10,20
puts "Solution 1: #{solution((1..10000).to_a)}"
