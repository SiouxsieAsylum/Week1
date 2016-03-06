def add(a,b)
  a + b
end

def subtract(a,b)
  a - b
end

def sum(array)
  array.reduce(:+)
end

def multiply(a,b*)
  b.reduce(:*)*a
end

def power(a,b)
  a**b
end

def factorial(a)
  return 1 if a == 1
  a * factorial(a-1)
end
