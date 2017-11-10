# 4. Viết chương trình cho nhập vào đường dẫn một thư mục,
# in ra danh sách tên file trong thư mục đó

p 'Nhap duong dan'
path = gets.chomp

Dir.entries(path).select {
    |file|
  if (File.file?(file))
    puts file
  end
}
