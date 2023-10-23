# write your code here

def echo(input)
  input
end

def shout(input)
  input.upcase
end

def repeat(input, times = 2)
  ([input] * times).join(' ')
end

def start_of_word(input, num)
  input.slice(0, num)
end

def first_word(input)
  input.split(' ').first
end

def titleize(input)
  words = %w[and over the]
  input.capitalize.split(' ').map { |word| words.include?(word) ? word : word.capitalize }.join(' ')
end
