def solution(a, k)
  k.times { a.insert(0, a.pop) }
  a.compact
end

# print solution([3, 8, 9, 7, 6], 2)
# print solution([], 20)
# print solution((1..10000).to_a, 20)
