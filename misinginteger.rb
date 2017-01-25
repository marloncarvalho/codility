def solution(a)
  a = a.uniq.sort.select { |n| n > 0 }
  result = 0
  for n in (0..a.length) do
    if a[n] != (n + 1) then
      result = (n + 1)
      break
    end
  end

  result
end

a = [-3,-2,-1,0]

puts solution(a)
