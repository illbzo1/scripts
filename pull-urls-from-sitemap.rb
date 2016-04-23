require 'io/console'

File.open("sitemap.xml").each_line do |li|
  puts li if (li[/my-url.com/])
end