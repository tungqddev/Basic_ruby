# 1. Viết chương trình thực hiện nhập vào danh sách tên nhân viên (kết thúc khi nhập vào chuỗi rỗng) rồi lưu vào một file.
#    Sau đó đọc lại danh sách nhân viên từ file, sắp xếp tên theo thứ tự tăng dần rồi in ra màn hình.

puts 'Nhap vao ten nhan vien (Nhap rong de ket thuc)'
nameArray = Array.new
while name = gets.chomp
  if(name.to_s.strip.empty?)
    break
  end
  nameArray.push(name)
end

# Ghi noi dung nameArray vao file
File.open("File_Ex1.txt", "w+") do |f|
  nameArray.each { |element| f.puts(element) }
end

# Doc noi dung file split theo dau xuong dong va sap xep
fileArray = File.read("./File_Ex1.txt").split(/[\r\n]/).sort

puts 'Ten sau khi duoc sap xep'
puts fileArray