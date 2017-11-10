# 10. Khởi tạo một mảng gồm n (n≤ 99) số thực sau đó
# liệt kê các phần tử có giá trị nhỏ hơn hoặc bằng x.

begin
  puts 'Nhap so phan tu mang (so nguyen <=99) n = '
  while arraySize = Integer(gets.chomp)
    if (arraySize < 100 && arraySize > 0)
      break
    end
    puts 'Vui long nhap so nguyen <=99 '
  end
rescue
  puts 'Vui long nhap so nguyen <=99'
  retry
end


myArray = Array.new(arraySize) { rand(1.0...99.9) }

puts 'Mang duoc khoi tao'
myArray.each_with_index {|val, index| puts "[#{index}] = #{val}" }

begin
  puts 'Nhap gia tri muon kiem tra'
  x = Float(gets.chomp)
rescue
  puts 'Vui long nhap gia tri la so '
  retry
end

puts 'Cac gia tri thoa man trong mang'
myArray.each_with_index {
  |val, index|
  if (x >= val)
    puts "[#{index}] = #{val}"
  end
}