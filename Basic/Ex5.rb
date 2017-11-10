puts 'CHUONG TRINH GIAI PHUONG TRINH BAC 1  ax + b = 0'

a = 0
b = 0

puts 'a = '
a = gets.chomp.to_f
puts 'b = '
b = gets.chomp.to_f
if(a == 0 && b==0)
  puts 'Phuong trinh dung voi moi x'
elsif(a == 0 && b!=0)
  puts 'Phuong trinh vo nghiem'
else
  puts " x = #{-b/a}"
end
