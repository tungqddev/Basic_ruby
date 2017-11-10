# 10. Xây dựng hàm chuanHoa nhận đầu vào là một chuỗi họ tên
# và đầu ra (giá trị trả về) là chuỗi sau khi đã chuẩn hóa.
# Để chuẩn hóa một chuỗi họ tên
# trước hết cần xóa các khoảng trắng thừa
# sau đó các ký tự đều chuyển sang dạng THƯỜNG ngoại trừ các ký tự đầu của mỗi từ là dạng HOA.
# Viết chương trình minh họa.

# Ham chuan hoa ten rieng
def nameFormat(name = "")
  puts 'Ten sau chuan hoa'
  name.split(' ').collect{|c| c.lstrip.rstrip.capitalize}.join(' ')
end

puts 'Nhap ten can chuan hoa'
name = gets.chomp
puts nameFormat(name)