# 2. Tính giá trị của 50 phần tử đầu tiên trong dãy số fibonaci, lưu trữ lại kết quả.
#    Viết chương trình cho phép người dùng nhập vào số thứ tự trong dãy rồi
#   in ra giá trị phần tử ứng với vị trí đó

fibonacciHash =  {1 => 0,2 => 1}
index = 3
loop do
  fibonacciHash[index] = fibonacciHash[index-1] + fibonacciHash[index - 2]
  index += 1
  if (index > 50)
    break
  end
end
puts 'Nhap thu tu phan tu muon in ra (1..50)'
id = gets.chomp.to_i
puts "gia tri phan tu thu #{id} la #{fibonacciHash[id]}"
