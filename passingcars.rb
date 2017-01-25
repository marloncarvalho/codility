def solution(a)
  multiplier = 0
  total = 0

  a.each do |v|
    if v == 0
      multiplier = multiplier + 1
    end

    if v == 1
      total = total + multiplier
    end

  end

  if total > 1000000000
    -1
  else
    total
  end
end

#puts solution([0,1,0,1,1])
#puts solution([0,0,0,0,0,0,0])
#puts solution([])
puts solution([1,1])
#puts solution([1,1,1,1,1,1,1,0,1,1,1,1,1,1,1,1,1,1,1,1,1,1])
