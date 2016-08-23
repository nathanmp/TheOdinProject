#write your code here
def add(a, b)
  return a+b
end
def subtract(a, b)
  return a-b
end
def sum(a)
  sum = 0
  a.each { |x| sum += x }
  return sum
end
def multiply(a, b)
  return a*b
end
def power(a, b)
  return a**b
end
def factorial(a)
  product = 1
  for i in 1..a do
    product = product*i
  end
  return product
end
