require 'benchmark'

def solution1(a)
  count = 0
  for i in (0..a.length - 1)
    range1_first = i - a[i]
    range1_last = i + a[i]
    for j in (i+1..a.length-1)
      range2_first = j - a[j]
      range2_last = j + a[j]
      count = count + 1 if range1_first <= range2_last && range2_first <= range1_last
    end
  end

  count
end

def solution2(a)
  ranges = []
  a.each_with_index do |v, i|
    ranges << (i-v..i+v)
  end

  count = 0
  for i in (0..ranges.length - 1)
    for j in (i+1..ranges.length-1)
      if ranges[i].first <= ranges[j].last && ranges[j].first <= ranges[i].last
        count = count + 1
      end
    end
  end

  count
end

# puts Benchmark.measure { solution1((1..10000).to_a) }
# puts Benchmark.measure { solution2((1..10000).to_a) }

Benchmark.bm do |x|
  x.report { solution1((1..10000).to_a) }
  x.report { solution2((1..10000).to_a) }
end

Benchmark.bm do |x|
  x.report { solution1([1,5,2,1,4,0]) }
  x.report { solution2([1,5,2,1,4,0]) }
end
