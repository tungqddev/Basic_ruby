# 9. Khởi tạo một mảng gồm n (n≤ 99) số tự nhiên có thứ tự không giảm.
#    Tiếp đến nhập một số tự nhiên x từ bàn phím
#   và tìm cách chèn phần tử có giá trị x vào mảng sao cho mảng vẫn đảm bảo thứ tự không giảm.

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

myArray = Array.new(arraySize) { rand(1...9) }.sort

puts 'Mang duoc khoi tao'
myArray.each_with_index {|val, index| puts "[#{index}] = #{val}" }

begin
  puts 'Nhap gia tri muon chen'
  x = Integer(gets.chomp)
rescue
  puts 'Vui long nhap gia tri la so nguyen'
  retry
end

myArray.each_with_index { |val, index|
  if(x <= val)
    myArray.insert(index,x)
    break
  end
  if val.equal? myArray.last
    myArray.insert(index + 1,x)
    break
  end
}

puts "Mang sau khi chen them phan tu #{x}"

myArray.each_with_index {|val, index| puts "[#{index}] = #{val}" }