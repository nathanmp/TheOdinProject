#write your code here
def echo(s)
  return s
end
def shout(s)
  return s.upcase
end
def repeat(s, i=2)
  return (s + " ")*(i-1) + s
end
def start_of_word(s, i=1)
  return s[0...i]
end
def first_word(s)
  return s.split(" ")[0]
end
def titleize(s)
  sarray = s.split(" ")
  finals = ""
  for ls in 0...sarray.length
    if ["over", "the", "and"].include?(sarray[ls]) and ls != 0
      finals += sarray[ls]
    else
      finals += sarray[ls].capitalize
    end
    if ls < sarray.length-1
      finals += " "
    end
  end
  return finals
end
