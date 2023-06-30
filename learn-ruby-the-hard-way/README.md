#### 0 - The Setup

- 查看 ruby 版本 `ruby --version`
- 启动 ruby REPL 环境 `irb`
  - 退出 ruby REPL： `quit`

#### 1 -  A Good First Program

- 打印语句：`puts "Hello, World"`
  - `puts 'I "said" do not touch this.'`
- 执行脚本：`ruby ex1.rb`

#### 2 - Comments and Pound Characters

- Ruby 中注释以 `#` 作为开始

#### 3 - Numbers and Math

- 数学符号：`+`, `-`, `/`, `*`, `%`, `<`, `>`, `<=`, `>=`

- 格式化字符串：

  ```ruby
  puts "What is 3 + 2? #{3 + 2}"
  puts "Is it greater? #{5 > -2}"
  ```

#### 4 - Variables and Names

```ruby
cars = 4
puts "There are #{cars} cars available."
```

#### 6 - Strings and Text

- 字符串拼接： `"hello " + 'world'`
- 字符串重复： `'*' * 10`
- `print "hello\n"` 等价于 `puts "hello"`

#### 8. Printing, Printing

- 格式化字符串：`formatter = "%{first}, %{second}"`
- 格式化字符串，是一种特殊的字符串，可以作为模版创建其他字符串
  - `formatter % {first: 1, second: "apple"}`
  - `formatter % {first: true, second: formatter}`
- `"... #{} ..."` 可以看作是 `"... %{} ..."` 的一种一次性形式。
  - `#{}` 更常用
  - `%{}` 一般只在需要重复利用一个字符串模版的时候使用
- 多行字符串

```ruby
puts %q{
There's something going on here.
With this weird quote
We'll be able to type as much as we like.
Even 4 lines if we want, or 5, or 6.
}
```

#### 10 - What was That?

- 转义字符：`\n`, `\t`, `\\`, `\'` ...
- 多行字符串

````ruby
fat_cat = """
I'll do a list:
\t* Cat food
\t* #{"Fishes"}
\t* Catnip\n\t* Grass
```
puts fat_cat
````

#### 11 - Asking Questions

- `gets`：从命令行读取用户的一行字符串输入，包含结尾的 `\n`

- `gets.chomp`：`gets` 一行字符串，然后移除结尾的 `\n`

- `gets.chomp.to_i`：对 `gets.chomp` 的字符串结果再转换成整数类型

  - 如果字符串无法转换，则结果为 `0`

  - `to_f` 将字符串解析为浮点数
  - `to_bool` 将字符串解析为 bool 类型

#### 13 - Parameters, Unpacking, Variables

- 全局变量 `ARGV` 包含了所有的命令行参数
- `first, second, third = ARGV` 可以提取命令行参数的前三个
  - 如果参数总数小于 3 个，如 2 个，那么 unpacking 后 `third` 为空字符串
  - 如果参数大于 3 个，那么 unpacking 仅会提取其中的前三个
- 在使用 `ARGV` 的情况下，就不能直接使用 `gets.chomp` 来读取用户输入了，而要改成 `$stdin.gets.chomp`。

#### 15 - Reading Files

- 查看帮助文档：`ri File#open`，`ri File#read`，`ri chomp`

- 打开文件 `fobj = open("filepath")`
- 读取文件内容 `fobj.read`

#### 16 - Reading and Writing Files

- `File` 文件对象的一些常用方法：
  - `close` 关闭文件
  - `read` 读出文件全部内容
  - `readline` 读出文件的一行内容
  - `truncate` 清空文件
  - `write('stuff')` 将字符串写入文件
  - `seek(0)` 将文件的操作光标移动到文件开始处

#### 18 - Names, Variables, Code, Functions

```ruby
def print_two_args(*argv) # 可接收任意数量参数
  arg1, arg2 = argv
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

def print_two_args(arg1, arg2)
  puts "arg1: #{arg1}, arg2: #{arg2}"
end

def print_none():
    puts "I got nothing."
end

print_two_args("hello", "ruby")
print_none # 没有参数，在调用时可以省略 `()`
```

