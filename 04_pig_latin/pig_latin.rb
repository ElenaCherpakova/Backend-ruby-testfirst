# write your code here

def translate(input)
  alphabet = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alphabet - vowels
  input.downcase.split(' ').map do |word|
    if vowels.include?(word[0])
      word + 'ay'
    elsif word[0..1] == 'qu'
      word[2..-1] + word[0..1] + 'ay'
    elsif word[0..2] == 'squ'
      word[3..-1] + word[0..2] + 'ay'
    elsif consonants.include?(word[0]) && consonants.include?(word[1]) && consonants.include?(word[2])
      word[3..-1] + word[0..2] + 'ay'
    elsif consonants.include?(word[0]) && consonants.include?(word[1])
      word[2..-1] + word[0..1] + 'ay'
    elsif consonants.include?(word[0])
      word[1..-1] + word[0] + 'ay'
    end
  end.join(' ')
end
