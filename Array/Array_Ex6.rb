# 6. Khởi tạo một mảng gồm n (n ≤ 99) số tự nhiên.
#    Nhập một số tự nhiên k từ bàn phím sau đó xóa phần tử thứ k trong mảng (k được tính từ 0).
#    Chú ý: thông báo ra mình nếu k không hợp lệ (vượt quá số phần tử của mảng)

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
  puts "Nhap vi tri phan tu muon xoa (0..#{arraySize})"
  while k = Integer(gets.chomp)
    if (k < arraySize && k >= 0)
      myArray.delete_at(k)
      break
    end
    puts "Phan tu khong ton tai. Vui long nhap so nguyen (0..#{arraySize})"
  end
rescue
  puts "Phan tu khong ton tai. Vui long nhap so nguyen (0..#{arraySize})"
  retry
end
puts 'Mang sau khi xoa'
myArray.each_with_index {|val, index| puts "[#{index}] = #{val}" }