def solution(a)
  index = 0
  min_average = (a[0] + a[1]) / 2

  (0..a.length-3).each do |n|
    average = (a[n] + a[n+1]).to_f / 2.0
    if average < min_average
      min_average = average
      index = n
    end

    average = (a[n] + a[n+1] + a[n+2]).to_f / 3.0
    if average < min_average
      min_average = average
      index = n
    end

  end

  if ((a[a.length-1] + a[a.length-2]) / 2) < min_average
    index = a.length - 2
  end

  index
end

puts solution([4,2,2,5,1,5,8])
