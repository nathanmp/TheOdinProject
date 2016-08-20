#write your code here
def translate(s)
  result = ""
  sarray = s.split(" ")
  for i in 0...sarray.length-1
    result += translate_word(sarray[i]) + " "
  end
  result += translate_word(sarray[sarray.length-1])
  return result
end
def translate_word(s)
  sa = s.split(/(sch)/)
  if sa.length > 1
    return sa[2] + "schay"
  end
  sa = s.split(/([^aeiou]+)qu/)
  if sa.length > 2
    return sa[2] + sa[1] + "quay"
  end
  sa = s.split(/(qu)/)
  if sa.length > 2
    return sa[2] + "quay"
  end
  sa = s.split(/([aeiou].*)/)
  if sa.length > 1
    return sa[1] + sa[0] + "ay"
  end
  return s
##  for i in 0...s.length
##    if to_break_on.include?(s[i])
##      first_vowel = i
##    end
  end
