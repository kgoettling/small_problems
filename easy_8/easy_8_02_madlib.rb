class Madlib
  attr_accessor :word_hsh, :my_story
  
  def initialize(my_story)
    @my_story = my_story
    @word_hsh = { 'noun'=> '', 'verb' => '',
                  'adjective' => '', 'adverb' => '' }
    pop_madlib
  end
  
  private
  
  def pop_madlib
    word_hsh.keys.each do |word_type|
      print "Enter a #{word_type}: "
      word_hsh[word_type] = gets.chomp
    end
    
    print_madlib
  end
  
  def print_madlib
    my_words = []
    
    my_story.split.each do |word|
      if word.match(/[^[:alnum:]]/) && word_hsh[word.gsub(/[^[:alnum:]]/, '')]
        my_words << word.gsub(/[^[:alnum:]]/, '')
        my_words << word.gsub(/[[:alnum:]]/, '')
      else
        my_words << word
      end
      
      p my_words
    end
    
    new_story = my_words.map do |word|
                  @word_hsh[word] ? @word_hsh[word] : word
                end.join(' ')
                
    puts new_story
  end
end

my_text = "Do you verb your adjective noun adverb? That's hilarious!"
my_madlib = Madlib.new(my_text)


# Enter a noun: dog
# Enter a verb: walk
# Enter an adjective: blue
# Enter an adverb: quickly

# Do you walk your blue dog quickly? That's hilarious!