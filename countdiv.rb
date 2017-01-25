def solution(a,b,k)
  if a % k == 0
    ((b - a) / k) + 1
  else
    (b - (a - a % k)) / k
  end
end

#puts solution(6,11,2)
#puts solution(2,2,2)
#puts solution(0,2000000000,2)
#puts solution(0,12,3)
#puts solution(0,10,1)
puts solution(21,31,10)
