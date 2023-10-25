# write your code here
def add(num1, num2)
  num1 + num2
end

def subtract(num1, num2)
  num1 - num2
end

def sum(array)
  array.inject(0) { |sum, num| sum + num }
end

def multiply(*numbers)
  numbers.inject(1) { |result, number| result * number }
end

def power(num, pwr)
  num**pwr
end

def factorial(num)
  num.downto(1).inject(1) { |result, num| result * num }
end

# def factorial(num)
#   return 1 if num.zero?

#   num * factorial(num - 1)
# end

