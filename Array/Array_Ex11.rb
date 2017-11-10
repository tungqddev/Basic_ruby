# 11. Khởi tạo một mảng gồm n (n≤ 99) số tự nhiên sau đó đảo ngược các phần tử trong mảng.

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

puts 'Mang sau khi dao phan tu'
myArray.reverse.each_with_index {|val, index| puts "[#{index}] = #{val}" }
