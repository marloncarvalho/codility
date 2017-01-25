def solution(a)
  a.uniq.length
end

puts solution([-200,1,2,3,-200,200])
puts solution([2])
puts solution([2,1,1,2,3,1])
puts solution((0..100000).to_a)
