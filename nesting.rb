def solution(s)
  return 1 if s.length == 0
  return 0 if s.length.odd?
  return 0 if s[0].eql? ')'
  return 0 if s[s.length - 1].eql? '('
  return 0 if s.count('(') != s.count(')')
  return 1
end

#puts solution('()')
#puts solution('(')
#puts solution(')(')
#puts solution('')
puts solution('())()(()')
