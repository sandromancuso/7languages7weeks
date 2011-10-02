secret = rand(10)
guess = -1
puts 'Guess a number between 1 and 10:'
while guess != secret
  guess = gets.to_i
  puts 'Guess is to low. Choose another number:' if guess < secret
  puts 'Guess is to high. Choose another number:' if guess > secret
end
puts 'Yay!! Well done.'
