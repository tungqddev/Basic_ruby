# 2. Khởi tạo một mảng gồm n (n≤ 99) số tự nhiên
# sau đó tính giá trị trung bình các phần tử của mảng.

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
sum = 0
myArray = Array.new(arraySize) { rand(1...999) }
if(myArray.length > 0)
  myArray.each{|x| sum += x }
  puts 'Gia tri trung binh cac phan tu cua mang = %.5f' % [sum/arraySize]
end