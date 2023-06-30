first, second, third = ARGV

puts "Your first variable is: #{first}"
puts "Your second variable is: #{second}"
puts "Your third variable is: #{third}"

print "get me a number: "
num = $stdin.gets.chomp
puts "I got a number: #{num}"
