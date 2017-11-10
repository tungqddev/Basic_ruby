# 6. Xóa các khoảng trắng thừa (đầu, cuối)
puts 'Nhap chuoi'

myString = gets.chomp.to_s

puts "chuoi sau khi xoa khoang trang dau cuoi [#{myString.lstrip.rstrip}]"