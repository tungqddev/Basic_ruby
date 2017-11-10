# 7. Khởi tạo một mảng gồm n (n ≤ 99) số tự nhiên.
#    Nhập một số tự nhiên x từ bàn phím sau đó xóa tất cả các phần tử có giá trị x trong mảng.
#    Chú ý:thông báo ra màn hình số phần tử bị xóa.

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
  puts 'Nhap gia tri muon xoa'
  x = Integer(gets.chomp)
rescue
  puts 'Vui long nhap gia tri la so'
  retry
end
initLenght = myArray.length
myArray.delete(x)
puts "so phan tu bi xoa = #{initLenght - myArray.length}"
puts 'Mang sau khi xoa'
myArray.each_with_index {|val, index| puts "[#{index}] = #{val}" }