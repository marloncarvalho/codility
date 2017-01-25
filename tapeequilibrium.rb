# Solução:
# 100% correctness
# 100% performance
# 100% Overall
def solution(a)
  size = a.length
  left_sum = a[0]
  right_sum = a[1..-1].reduce(:+)
  min = (left_sum - right_sum).abs
  i = 1

  while true
    break if i == size - 1
    left_sum += a[i]
    right_sum -= a[i]
    min = [(left_sum - right_sum).abs, min].min
    i = i + 1
  end

  min
end
