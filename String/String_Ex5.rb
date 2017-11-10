# 5. Đếm số ký tự thường/hoa/số trong 1 mật khẩu

puts 'Nhap mat khau'

myString = gets.chomp.to_s

puts "so luong chu hoa %s" % [myString.scan(/[A-Z]/).length]
puts "so luong chu thuong %s" % [myString.scan(/[a-z]/).length]
puts "so luong so %s" % [myString.scan(/[0-9]/).length]
