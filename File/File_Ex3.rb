# 3. Tạo lớp Person với các thuộc tính: tên, năm sinh, giới tính, quê quán.
#    Yêu cầu người dùng nhập vào thông tin 5 người, lưu thông tin vào file dưới dạng JSON.
#    Đọc thông tin đã lưu từ JSON, in ra danh sách người đã nhập

class Person
  def initialize(name, born, gender, addr)
    @person_name = name
    @person_born = born
    @person_gender = gender
    @person_addr = addr
  end

  def to_hash
    {
        name: @person_name,
        born: @person_born,
        gender: @person_gender,
        address: @person_addr,
    }
  end

  def display_details()
    puts "-------------------------------"
    puts "Person name #@person_name"
    puts "Person born #@person_born"
    puts "Person gender #@person_gender"
    puts "Person address #@person_addr"
    puts "-------------------------------"
  end
end
person_array = Array.new
person_count = 0
person_hash = Hash.new
while (person_count < 5)
  puts "Nhap thong tin nguoi thu #{person_count + 1}"
  puts 'Ten'
  name_input = gets.chomp.to_s
  puts 'Nam sinh'
  born_input = gets.chomp.to_i
  puts 'Gioi tinh (Nam/Nu)'
  gender_input = gets.chomp.to_s
  puts 'Dia chi'
  addr_input = gets.chomp.to_s
  new_person = Person.new(name_input, born_input, gender_input, addr_input)
  person_array.push(new_person.to_hash)
  person_count += 1
end

person_hash.each do |key, value|
  puts "thong tin nguoi thu #{key + 1}"
  value.display_details
end

require 'json'
File.open("File_Ex3.json", "w+") do |f|
  f.puts(person_array.to_json)
end

file_array = JSON.parse(File.read("./File_Ex3.json"))

file_array.each do |value|
 new_person = Person.new(value["name"].to_s,value["born"].to_i,value["gender"].to_s,value["address"].to_s)
 new_person.display_details
end

