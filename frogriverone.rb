def solution(x,a)
  result = []
  a.each_with_index do |n,i|
    result[n-1] = i if result[n-1].nil?
  end

  if result.compact.length == x
    result.max
  else
    -1
  end
end

puts "Should be -1: #{solution(5,[])}"
puts "Should be 7: #{solution(5,[1,2,3,4,2,3,4,5])}"
puts "Should be 6: #{solution(5,[1,3,1,4,2,3,5,4])}"

# All Leafs in the same place. Should be -1.
puts "Should be -1: #{solution(5, [1,1,1,1,1])}"

# Frog never cross. Should be -1.
puts "Should be -1: #{solution(5, [1,2,3,4,4])}"
