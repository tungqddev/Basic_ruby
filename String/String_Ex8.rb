# 8. Xây dựng hàm nhận đầu vào là chuỗi s và hai số nguyên k, n
# sau đó xóa chuỗi con độ dài n bắt đầu từ vị trí k ra khỏi chuỗi s.
# Viết chương trình minh họa

def subString(s = "",k = 0,n = 0)
  s[0..k-2] + s[k+n-1..s.length-1]
end

puts 'Nhap doan van ban muon cat'
paragraph = gets.chomp

begin
  puts 'Nhap vi tri bat dau (k)'
  while k = Integer(gets.chomp)
    if (k > 0 && k <= paragraph.length)
      break
    end
    puts 'Vi tri khong ton tai'
  end
rescue
  puts "nhap vi tri tu 1..#{paragraph.length}"
  retry
end

begin
  puts 'Nhap so luong ki tu muon cat (n)'
  while n = Integer(gets.chomp)
    if((k+n-1) <= paragraph.length)
      break
    end
    puts 'So luong khong phu hop hoac vuot qua do dai '
  end
rescue
  puts "nhap vi tri tu 1..#{paragraph.length}"
  retry
end

puts 'chuoi ket qua ' + subString(paragraph,k,n)
