puts 'CHUONG TRINH TINH CHU VI VA DIEN TICH HINH CHU NHAT'
puts 'Canh thu nhat = '
STDOUT.flush
canh1 = gets.chomp.to_f
puts 'canh thu hai = '
STDOUT.flush

canh2 = gets.chomp.to_f
puts "Chu vi = #{2*(canh1 + canh2)}"
puts "Dien tich = #{canh1 * canh2}"