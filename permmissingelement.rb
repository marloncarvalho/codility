def solution(a)
end

def isAlmostPalindrome(word)

  result = word.reverse == word
  unless result
    result  =true
    reversed = word.reverse
    count = 0
    for i in (0..word.length - 1)
      if word[i] != reversed[i]
        count = count + 1
      end

      if count > 2
        result = false
        break
      end
    end
  end

  result
end

def MostPopularNumber(a,l)
  a.group_by{|n| n}.max{|x, y| x[1].length <=> y[1].length}[0]
end

print "#{MostPopularNumber([5,5,5,1,1,1],1)} \n"
puts MostPopularNumber([14,14,2342,2342,2342],1)
puts MostPopularNumber([66],1)
# puts MostPopularNumber([34,31,34,77,82],5)
# puts MostPopularNumber([22,101,102,101,102,525,88],5)
# puts isAlmostPalindrome('aabc')
