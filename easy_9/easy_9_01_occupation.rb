def greetings(arr_name, hsh_job)
  puts "Hello #{arr_name.join(' ')}! Nice to have a " \
       "#{hsh_job[:title]} #{hsh_job[:occupation]} around."
end

greetings(%w(John Q Doe), title: 'Master', occupation: 'Plumber')
