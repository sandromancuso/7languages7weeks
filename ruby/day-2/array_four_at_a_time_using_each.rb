a = []
display = []
(1..16).each {|x| a << x}
s = "";
a.each do |x| 
  display << x
  if x % 4 == 0
    puts display.inspect
    display = []
  end
end
