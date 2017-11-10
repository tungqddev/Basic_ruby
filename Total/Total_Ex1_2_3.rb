class My_array
  def initialize(args)
    @items = args
  end

  def my_each
    loop_index = 0
    loop do
      item = @items[loop_index]
      yield item
      loop_index += 1
      if (loop_index >= @items.length)
        break
      end
    end
  end

  def my_map!
  end

  def say_hello()
    puts "Hi, I am a #{@items.class}!"
  end

end
test = 'abc'
test_array = My_array.new(test)
test_array.say_hello
test_array.my_each {
    |val|
  puts val
  p '-------'
}

