File.open('tree.rb').each_with_index do |line_text, line_index|
  puts "#{line_index + 1} - #{line_text}" if line_text =~ /tree/
end
