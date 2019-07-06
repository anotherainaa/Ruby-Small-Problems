def greetings(array, hash)
  full_name = array.join(' ')
  job_title = hash[:title] + ' ' + hash[:occupation]
  puts "#{full_name}! Nice to have a #{job_title} around."
end

greetings(%w(John Q Doe), title: 'Master', occupation: 'Plumber')
