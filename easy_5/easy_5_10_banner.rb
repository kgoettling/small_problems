MAX_TEXT_SIZE = 76

def print_in_box(text)
  if text.size > MAX_TEXT_SIZE 
    num_spaces = MAX_TEXT_SIZE 
  else
    num_spaces = text.size
  end
  
  puts outer_line(num_spaces)
  puts empty_line(num_spaces)
  
  split_text(text).each do |line|
    puts text_line(line)
  end
  
  puts empty_line(num_spaces)
  puts outer_line(num_spaces)
end

def outer_line(num_spaces)
  '+-' + '-' * num_spaces + '-+'
end

def empty_line(num_spaces)
  '| ' + ' ' * num_spaces + ' |'
end

def text_line(text)
  "| #{text} |"
end

def split_text(text)
  chr_counter = 0
  curr_line = ''
  text_arr = []
  
  if text.size > MAX_TEXT_SIZE
    text.split.each do |word|
      if curr_line == ''
        curr_line = word
        chr_counter = word.size
        next
      end
      
      if (chr_counter + word.size + 1) <= MAX_TEXT_SIZE
        chr_counter += word.size + 1
        curr_line << ' ' + word
      else
        #text_arr << curr_line + 
        #           ' ' *(MAX_TEXT_SIZE - chr_counter)
        text_arr << curr_line.center(MAX_TEXT_SIZE)
        curr_line = word
        chr_counter = word.size
      end
    end
    #text_arr << curr_line + 
    #            ' ' *(MAX_TEXT_SIZE - chr_counter)
    text_arr << curr_line.center(MAX_TEXT_SIZE)
  else
    text_arr << text
  end
  
  text_arr
end

print_in_box('To boldly go where no one has gone before. ' * 100)
print_in_box('')