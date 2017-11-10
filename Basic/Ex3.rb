puts 'KIEM TRA VA TINH CHU VI DIEN TICH TAM GIAC'

# Nhap va kiem tra gia tri canh thu 1
puts 'Canh thu 1 = '
STDOUT.flush
canh1 = gets.chomp.to_f
while canh1 <= 0
  puts 'Vui long nhap so khong am'
  puts 'Canh thu 1 = '
  STDOUT.flush
  canh1 = gets.chomp.to_f
end

# Nhap va kiem tra gia tri canh thu 2
puts 'Canh thu 2 = '
STDOUT.flush
canh2 = gets.chomp.to_f
while canh2 <= 0
  puts 'Vui long nhap so khong am'
  puts 'Canh thu 2 = '
  STDOUT.flush
  canh2 = gets.chomp.to_f
end

# Nhap va kiem tra gia tri canh thu 3
puts 'Canh thu 3 = '
STDOUT.flush
canh3 = gets.chomp.to_f
while canh3 <= 0
  puts 'Vui long nhap so khong am'
  puts 'Canh thu 3 = '
  STDOUT.flush
  canh3 = gets.chomp.to_f
end

# Ham tinh chu vi tam giac
def chuViTamGiac(c1, c2, c3)
  puts 'Chu vi tam giac = %.2f' % [c1.to_f + c2.to_f + c3.to_f]
end
# Ham tinh dien tich tam giac
def dienTichTamGiac(c1, c2, c3)
  s = (c1 + c2 + c3)/2
  puts 'Dien tich tam giac = %.2f' % [Math.sqrt(s*(s-c1)*(s-c2)*(s-c3))]
end

# Kiem tra va tinh chu vi, dien tich tam giac
if ((canh1 + canh2 <= canh3) && (canh1 + canh3 <= canh2) && (canh2 + canh3 <= canh1))
  puts 'Khong phai la 3 canh cua mot tam giac'
else
  puts chuViTamGiac(canh1,canh2,canh3)
  puts dienTichTamGiac(canh1,canh2,canh3)
end
