# write your code here
def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(array)
  array.reduce(0) { |sum, num| sum + num }
end

def multiply(*numbers)
  result = 1
  numbers.each { |number| result *= number }
  result
end

def power(num, pwr)
  num**pwr
end

def factorial(num)
  return 1 if num.zero?

  num * factorial(num - 1)
end
