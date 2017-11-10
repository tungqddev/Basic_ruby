# 12. Khởi tạo một mảng gồm n (n≤ 99) số tự nhiên sau đó
# hiển thị các dãy con tăng trong mảng.

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

myArray = Array.new(arraySize) {rand(1...9)}
startIndexArr = Array.new
amountArr = Array.new

puts 'Mang duoc khoi tao'
myArray.each_with_index {|val, index| puts "[#{index}] = #{val}"}

# Duyet mang input, luu index cua cac day con vao mang startIndexArr
# tuong ung luu so luong phan tu cac day con vao mang amountArr

index = 1
startIndexArr.push(0)
loop do
  count = 1
  while (myArray[index].to_i >= myArray[index - 1].to_i)
    count += 1
    if (index.to_i >= myArray.length.to_i)
      break
    else
      index += 1
    end
  end
  if (index.to_i < myArray.length.to_i)
    startIndexArr.push(index)
  end
  amountArr.push(count)
  index += 1
  if (index > myArray.length)
    break
  end
end
puts startIndexArr.join(' ')
puts amountArr.join(' ')

# in cac day con ra man hinh
amountArr.each_with_index{
  |val, index|
  printIndex = startIndexArr[index]
  puts "-----day con thu #{index + 1}-----"
  (0..val-1).each{
    p myArray[printIndex]
    printIndex += 1
  }
}
puts 'FINISHED'
