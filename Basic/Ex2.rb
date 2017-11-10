puts 'TINH CHU VI VA DIEN TICH HINH TRON'
puts 'Ban kinh hinh tron = '
STDOUT.flush
radius = gets.chomp.to_f
PI = 3.14159265
puts 'Chu vi hinh tron = %.2f' % [2*radius*PI]
puts 'Dien tich hinh tron = %.2f' % [PI*radius**2]