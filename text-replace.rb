# The file or files you want to open to replace text
file_names = ['test.txt']

file_names.each do |file_name|
  text = File.read(file_name)
  # Pattern of the existing text and the replacement text
  new_contents = text.gsub("original-text", "new-text")

  File.open(file_name, "w") {|file| file.puts new_contents }
  puts "Done!"
end