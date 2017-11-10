# 4. Viết chương trình đọc vào một chuỗi s từ bàn phím
# sau đó hiển thị số ký tự trắng ra màn hình

puts 'Nhap chuoi'
myString = gets.chomp.to_s

puts "so ky tu trang la #{myString.count(' ')}"