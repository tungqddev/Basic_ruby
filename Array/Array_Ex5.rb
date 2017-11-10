# 5. Nhập vào một mảng A gồm n (n≤ 99) số tự nhiên từ bàn phím
# (quá trình nhập sẽ dừng khi người sử dụng nhập vào giá trị -1)
# sau đó sắp xếp mảng theo thứ tự không giảm.

valueArray = Array.new
MAXLEN = 99
puts 'Nhap phan tu mang. Nhap "-1" de ket thuc'
while
begin
  inputValue = Integer(gets.chomp)
rescue
  puts 'Vui long nhap so nguyen'
  retry
end
  case inputValue
    when -1
      break
    else
      valueArray.push(inputValue)
  end
  if(valueArray.length == MAXLEN)
    break
  end
end
valueArray = valueArray.sort

valueArray.each_with_index {|val, index| puts "[#{index}] = #{val}" }
