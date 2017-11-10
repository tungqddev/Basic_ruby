# 3. Khởi tạo một mảng gồm n (n ≤ 99) số thực, nhập một số thực x từ bàn phím sau đó
# đếm số phần tử trong mảng có giá trị x.

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
find = 0
myArray.each_with_index { |val,index|
  if val == x
    find += 1
  end
  puts "[#{index}] = #{val}"
}
puts "#{x} xuat hien #{find} lan"
