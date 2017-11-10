# 8. Khởi tạo một mảng gồm n (n ≤ 99) số tự nhiên.
#    Nhập hai số tự nhiên x và k từ bàn phím sau đó chèn phần tử có giá trị x vào mảng tại vị trí k (tính từ 0).
#    Chú ý: thông báo ra màn hình nếu k không hợp lệ (vượt quá kích thước mảng).

begin
  puts 'Nhap so phan tu mang (so nguyen <=99) n = '
  while arraySize = Integer(gets.chomp)
    if (arraySize < 100 && arraySize > 0)
      break
    end
    puts 'Vui long nhap so nguyen <=99'
  end
rescue
  puts 'Vui long nhap so nguyen <=99'
  retry
end

myArray = Array.new(arraySize) { rand(1...9) }

puts 'Mang duoc khoi tao'
myArray.each_with_index {|val, index| puts "[#{index}] = #{val}" }

begin
  puts 'Nhap gia tri muon chen'
  x = Integer(gets.chomp)
rescue
  puts 'Vui long nhap gia tri la so'
  retry
end

begin
  puts "Nhap vi tri phan tu muon chen (0..#{arraySize})"
  while k = Integer(gets.chomp)
    if (k < arraySize && k >= 0)
      myArray.insert(k,x)
      break
    end
    puts "Vi tri phan tu khong ton tai. Vui long nhap so nguyen (0..#{arraySize})"
  end
rescue
  puts "Vi tri phan tu khong ton tai. Vui long nhap so nguyen (0..#{arraySize})"
  retry
end

puts "Mang sau khi chen them phan tu #{x} vao vi tri #{k}"

myArray.each_with_index {|val, index| puts "[#{index}] = #{val}" }