# 1. Lưu trữ thông tin 10 người (gồm id và name) (dữ liệu tự khởi tạo).
#    Cho phép nhập vào id của một người và in ra tên ứng với id đó

personHash = { "1" => "Tung 1",
               "2" => "Tung 2",
               "3" => "Tung 3",
               "4" => "Tung 4",
               "5" => "Tung 5",
               "6" => "Tung 6",
               "7" => "Tung 7",
               "8" => "Tung 8",
               "9" => "Tung 9",
               "10" =>" Tung 10", }

puts 'Nhap id'
id = gets.chomp
puts [personHash[id]]

