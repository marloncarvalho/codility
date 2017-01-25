def solution(a)
  return 0 if a.length == 1
  return -1 if a.uniq.length == a.length

  half = a.length / 2
  big = nil

  a.group_by { |n| n }.each_value do |v|
    big = v.first if v.length > half
  end

  index = -1
  a.each_with_index do |n, i|
    if n == big
      index = i
      break
    end
  end

  index
end

# puts solution([1,1,2,2])
# puts solution([1])
# puts solution([3,4,3,2,3,-1,3,3])
# puts solution([1,2,3,4,5,6,7])
puts solution([0,1,1,1,1,2,3,4,5,6,7,7,8,8,8])
# puts solution((0..100000).to_a)
