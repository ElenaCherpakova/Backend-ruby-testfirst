# class Book
class Book
  attr_accessor :title

  def initialize(title = '')
    @title = title
  end

  def title=(new_title)
    not_capitalize_words = %w[the a an and in of]
    @title = new_title.capitalize.split(' ').map do |word|
      not_capitalize_words.include?(word) ? word : word.capitalize
    end.join(' ')
  end
end
