# 回忆总结

puts "hello ruby"
a = 1
puts "a = #{a}"
puts """
line 1
line 2
line 3
"""

"hello" + "world"
"hello" * 4


1 + 2
2 / 1
5 % 3
a += 3

$stdin.gets.chomp
$stdin.gets.chomp.to_i

arg1, arg2 = ARGV

f = open("hello.txt")
f.read
f.readline
f.close
f.seek(0)

def function(*argv)
  arg1, arg2 = argv
  puts "arg1 = #{arg1}, arg2 = #{arg2}"
end

def add(a, b)
  a + b
end

c = add(1, 2)

# commands
# ruby hello.rb
# irb
# ri File#read
#