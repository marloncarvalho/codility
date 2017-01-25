def solution(s, p, q)
  result = []

  p.each_with_index do |pv,i|
    range = s[pv..q[i]]
    unless range.nil?
      if range.include?('A')
        result << 1
      elsif range.include?('C')
        result << 2
      elsif range.include?('G')
        result << 3
      elsif range.include?('T')
        result << 4
      end
    end
  end

  result
end

print "solution: #{solution('CAGCCTA',[2,5,0],[4,5,6])} \n"
print "solution: #{solution('C',[2,5,0],[4,5,6])} \n"
print "solution: #{solution('',[2,5,0],[4,5,6])} \n"
