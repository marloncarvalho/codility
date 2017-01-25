def solution(n, a)
  counters = [0] * n
  max = 0
  current_max = 0

  a.each do |v|
    if v >= 1 && v <= n
      counters[v-1] = max if max > counters[v-1]
      counters[v-1] = counters[v-1] + 1
      current_max = counters[v-1] if current_max < counters[v-1]
    elsif v == n + 1
      max = current_max
    end
  end

  counters.map! do |n|
    if n < max
      max
    else
      n
    end
  end

  counters
end

puts "Should be [3, 2, 2, 4, 2]: #{solution(5,[3,4,4,6,1,4,4])}"
puts "Should be ?: #{solution(5,[6,6,6,6,6,6,6])}"
