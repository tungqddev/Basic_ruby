# 4. Khởi tạo một mảng gồm n (n ≤ 99) số thực, nhập một số thực x từ bàn phím
# sau đó tìm xem trong mảng có phần tử nào bằng x hay không.

begin
  puts 'Nhap so phan tu mang (so nguyen <=99)'
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
puts 'Nhap so thuc muon kiem tra x = '

begin
  x = Float(gets.chomp)
rescue
  puts 'Vui long nhap so thuc '
  retry
end
# myArray.each_with_index { |val,index|
#   puts "valueArray[#{index}] = #{val}"
# }

if (myArray.include? x)
  puts "#{x} co xuat hien trong mang"
else
  puts "#{x} khong xuat hien trong mang"
end
