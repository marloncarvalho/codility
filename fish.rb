def solution(a, b)
  for i in 0..b.length - 2
    if b[i] == 1 && b[i + 1] == 0
      if a[i] > a[i + 1]
        a.delete_at i + 1
        b.delete_at i + 1
      else
        a.delete_at i
        b.delete_at i
      end

      solution(a, b)
      break
    end
  end

  b.length
end

# puts solution([4,3,2,1,5],[0,1,0,0,0])
# puts solution([4,3,1,2,5],[0,1,1,0,0])
# puts solution([4,3],[1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1])
# puts solution([4,3,2,1,5],[0,1,0,0,1])
# puts solution([1,2,3,4,5],[1,0,1,0,1])
puts solution([4,3,2,1,5],[0,1,0,0,1])
