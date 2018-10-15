# print "Please type a word or multiple words: "
# words = gets.chomp
# characters = words.chars
# characters.reject! { |char| char == ' ' }

# puts "There are #{characters.count} characters in \"#{words}\"."

class Phrase
  attr_reader :my_phrase
  
  def initialize
    print "Please type a word or multiple words: "
    @my_phrase = gets.chomp
  end
  
  def count_chars
    @my_phrase.chars.count { |char| char != ' ' }
  end
  
  def to_s
    "There are #{count_chars} characters in \"#{@my_phrase}\"."
  end
end

my_words = Phrase.new
puts my_words