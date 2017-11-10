puts 'Chon loai phuong trinh'
a = 0
b = 0
puts '1.ax + b > 0'
puts '2.ax + b < 0'
kind = gets.chomp
case kind
  when '1'
    puts 'a = '
    a = gets.chomp.to_f
    puts 'b = '
    b = gets.chomp.to_f
    if(a == 0 && b > 0)
      puts 'Bat phuong trinh dung voi moi x'
    elsif (a == 0 && b < 0)
      puts 'Khong co gia tri x nao thoa man'
    elsif (a < 0)
      puts "Nghiem cua bat phuong trinh la x < %.2f" % [-b/a]
    else
      puts "Nghiem cua bat phuong trinh la x > %.2f" % [-b/a]
    end
  when '2'
    puts 'a = '
    a = gets.chomp.to_f
    puts 'b = '
    b = gets.chomp.to_f
    if(a == 0 && b < 0)
      puts 'Bat phuong trinh dung voi moi x'
    elsif (a == 0 && b > 0)
      puts 'Khong co gia tri x nao thoa man'
    elsif (a < 0)
      puts "Nghiem cua bat phuong trinh la x > %.2f" % [-b/a]
    else
      puts "Nghiem cua bat phuong trinh la x < %.2f" % [-b/a]
    end
end