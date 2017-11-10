# 9. Xây dựng hàm nhận đầu vào là 2 chuỗi s1 và s2.
#     Hàm sẽ xóa các "từ" s2 xuất hiện trong s1.
#     Hàm trả về chuỗi s1. Sau đó viết chương trình minh họa hàm này

def deleteString(s1 = "", s2 = "")
  s1.gsub(/#{s2}/,'')
end
puts 'Nhap doan van ban dau vao'
sourceParagraph = gets.chomp

puts 'Nhap doan van ban muon cat'
delParagraph = gets.chomp

puts "van ban ket qua #{deleteString(sourceParagraph,delParagraph )}"