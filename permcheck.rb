def solution(a)
  return 0 if a.uniq.length != a.length
  (1..a.length).reduce(:+) != a.reduce(:+) ? 0 : 1
end
