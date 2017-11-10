# 5. Viết chương trình cho nhập vào đường dẫn một thư mục,
# in ra danh sách tệp .rb trong thư mục đó

p 'Nhap duong dan'
path = gets.chomp

Dir.glob("#{path.to_s}/*.rb") do |file|
  puts file
end