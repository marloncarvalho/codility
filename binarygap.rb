# def solution(n)
#   arr = []
#   total = 0
#
#   n.to_s(2).split('').each do |char|
#     if char == '1'
#       total = arr.length - 1 if arr.length > 0 && arr.length > total
#       arr = ['1']
#     else
#       arr << char if arr.length > 0
#     end
#   end
#
#   total
# end

# In this algorithm, we'll convert the integer into a string representing a binary number.
# Then, we'll remove the last element if this integer is even.
#
def solution(n)
  zeroes = n.to_s(2).split('1')
  return 0 if zeroes.empty? || n == 0

  # Drop the last occurrence if it's a even number.
  # Odd numbers in binary always end with a '1' number.
  zeroes.pop if n % 2 == 0
  zeroes.map { |s| s.length }.max
end

puts solution(1376796946) == 5 # 1010010000100000100000100010010 - result=5
puts solution(9) == 2 # 2
puts solution(529) == 4 # 4
puts solution(1041) == 5 # 5
puts solution(0) == 0 #0
puts solution(2) == 0 # 2 em binário = 10 # result=0
puts solution(65) == 5# result=5
puts solution(2147483645) == 1 #result=1
puts solution(18) == 2 #result=2
