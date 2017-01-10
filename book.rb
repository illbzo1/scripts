puts "What's the first page of the book?"
first_page = gets.chomp.to_i

puts "What's the last page of the book?"
last_page = gets.chomp.to_i

total_pages = last_page - first_page

puts "How many days will the book take you to read?"

days = gets.chomp.to_i
days = days.to_i

daily_reading = (total_pages / days).to_i

puts "You'll have to read #{daily_reading} pages per day to finish this book in #{days} days."

puts "Reading Schedule:"

scheduled_reading = daily_reading

while scheduled_reading < total_pages and (total_pages - scheduled_reading) > daily_reading do
  puts "Read to page #{scheduled_reading}"
  scheduled_reading += daily_reading
end

puts "Finish the book."