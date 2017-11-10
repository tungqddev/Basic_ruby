# Nhập vào một mảng gồm n (n≤ 99) số tự nhiên từ bàn phím (quá trình nhập
# sẽ dừng khi người sử dụng nhập vào giá trị -1) sau đó hiển thị mảng vừa
# nhập và giá trị nhỏ nhất của mảng ra màn hình.

valueArray = Array.new
minValue = 0
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
      if ((valueArray.length == 1))
        minValue = inputValue.to_i
      elsif(inputValue.to_i < minValue.to_i)
        minValue = inputValue
      end
  end
  if(valueArray.length == MAXLEN)
    break
  end
end

valueArray.each_with_index {|val, index| puts "valueArray[#{index}] = #{val}" }
if(valueArray.length>0)
  puts 'Gia tri nho nhat trong mang %d' % minValue
end

