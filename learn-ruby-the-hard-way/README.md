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







