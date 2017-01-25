def solution(a)
  return 0 if a.length < 3
  sorted = a.sort
  product1 = sorted[a.length-1] * sorted[a.length-2] * sorted[a.length-3]
  product2 = 0

  if sorted[0] < 0 && sorted[1] < 0
    product2 = sorted[0] * sorted[1] * sorted[a.length-1]
  end

  (product1 > product2) ? product1 : product2
end

# 1. Os dois maiores negativos multiplicados. O produto multiplicado pelo maior positivo.
# 2. Os três maiores positivos.

puts solution([1,2,5])
#puts solution([-3,1,2,-2,5,6])
#puts solution([-100,-10,2,3,10,100])
#puts solution([-6,-3,1,2,-3,-5,6])

# [1,2,3,-4,5]
# [-1,2,3,-5,6]
# [-10,-9,-50,5,6,7]
#
#
# [6,3,1,2,3,5,6] - [1,2,3,3,5,6,6]
