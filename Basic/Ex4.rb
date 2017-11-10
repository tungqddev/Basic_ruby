puts 'TIM SO NHO NHAT trong a,b,c,d'
numArray = Array.new()

puts 'Nhap a = '
STDOUT.flush
a = gets.chomp.to_f
numArray.push(a)

puts 'Nhap b = '
STDOUT.flush
b = gets.chomp.to_f
numArray.push(b)

puts 'Nhap c = '
STDOUT.flush
c = gets.chomp.to_f
numArray.push(c)

puts 'Nhap d = '
STDOUT.flush
d = gets.chomp.to_f

numArray.push(d)
minNum = a
maxNum = a

numArray.each_with_index do |val|
  if(minNum > val.to_f)
    minNum = val
  end

  if(maxNum < val.to_f)
    maxNum = val
  end
end
puts "Gia tri nho nhat = #{minNum}"
puts "Gia tri lon nhat = #{maxNum}"