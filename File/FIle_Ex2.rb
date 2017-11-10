# 2. Viết chương trình thực hiện nhập vào một số tự nhiên n,
#  sau đó tạo ra ngẫu nhiên n số tự nhiên rồi lưu vào một file.
#  Đọc tất cả các số từ file đã lưu, tính tổng rồi in ra màn hình

p 'Nhap vao so n'
begin arraySize = Integer(gets.chomp)
rescue
  puts 'Vui long nhap so nguyen'
  retry
end

myArray = Array.new(arraySize) { rand(1...9999) }

File.open("File_Ex2.txt", "w+") do |f|
  f.puts(myArray.join(' '))
end

fileArray = File.read("./File_Ex2.txt").split(' ')

puts (fileArray)

sum = 0
fileArray.each do |i|
  sum += i.to_i
end

puts "sum  = #{sum}"
