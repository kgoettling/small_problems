# print 'What is your name? '
# answer = gets.chomp
# name = answer.gsub(/[^[:alpha:]]/, '')

# if answer.chars.include?('!')
  # puts "HELLO #{name.upcase}! WHY ARE WE SCREAMING?"
# else
  # puts "Hello #{name}."
# end

class Greeting
  attr_reader :name, :screaming
  
  def initialize
    print 'What is your name? '
    answer = gets.chomp
    @name = answer.gsub(/[^[:alpha:]]/, '')
    @screaming = true if answer.chars.include?('!')
    respond
  end

  def respond
    if @screaming
      puts "HELLO #{name.upcase}! WHY ARE WE SCREAMING?"
    else
      puts "Hello #{name}."
    end
  end
end

bob = Greeting.new