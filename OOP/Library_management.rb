# user class
class User
  def initialize(userid, username, password, level)
    @userid = userid
    @username = username
    @password = password
    @level = level
  end

  def to_hash
    {
        userid: @userid,
        username: @username,
        password: @password,
        level: @level,
    }
  end
end

# book class
class Book
  def initialize(isbn, title, subject, author, publisher, date, pages, copies)
    @isbn = isbn
    @title = title
    @subject = subject
    @author = author
    @publisher = publisher
    @date = date
    @pages = pages
    @copies = copies
  end

  def to_hash
    {
        isbn: @isbn,
        title: @title,
        subject: @subject,
        author: @author,
        publisher: @publisher,
        date: @date,
        pages: @pages,
        copies: @copies,
    }
  end
end

# Luu thong tin ve sach
$books_array = Array.new

# luu thong tin user
$user_array = Array.new

# chua index cac phan tu trong books_array phu hop ket qua tim kiem
$search_result_array = Array.new

require 'json'

# doc noi dung file lu thong tin vao books_array (tao file moi neu chua ton tai)
if (File.file?("./Books.json") && !File.zero?("./Books.json"))
  $books_array = JSON.parse(File.read("./Books.json"))
else
  File.new("./Books.json", "w")
end

# doc noi dung file lu thong tin vao users_array (tao file moi neu chua ton tai)
if (File.file?("./Users.json") && !File.zero?("./Users.json"))
  $user_array = JSON.parse(File.read("./Users.json"))
else
  File.new("./Users.json", "w")
end

# Tim kiem tuong doi sach
def book_seaching

  puts 'Ten sach :'
  title = gets.chomp.to_s

  puts 'Chu de :'
  subject = gets.chomp.to_s

  puts 'Tac gia :'
  author = gets.chomp.to_s

  puts 'Nha xuat ban :'
  publisher = gets.chomp.to_s

  puts 'Nam xuat ban :'
  date = gets.chomp.to_s

  puts ' -------------------'
  puts '|Ket qua tim kiem   |'
  puts ' -------------------'

  puts "\t\tisbn\ttitle\tsubject\tauthor\tpublisher\tdate\tpages\tcopies"
  $books_array.each_with_index {
      |value, index|
    if ((value["title"].to_s.include? title) && (value["subject"].to_s.include? subject) &&
        (value["author"].to_s.include? author) && (value["publisher"].to_s.include? publisher) &&
        (value["publisher"].to_s.include? date))
      $search_result_array.push(index)
      puts "[#{$search_result_array.length}]\t\t#{value["isbn"]}\t\t#{value["title"]}\t\t#{value["subject"]}\t\t#{value["author"]}\t\t#{value["publisher"]}\t\t\t#{value["date"]}\t\t#{value["pages"]}\t\t#{value["copies"]}\t\t"
    end
  }
  puts "Bam ENTER de tiep tuc"
  gets.chomp
end

# Them mot sach moi
def book_adding
  puts 'Ma so :'
  isbn = gets.chomp.to_s

  puts 'Ten sach :'
  title = gets.chomp.to_s

  puts 'Chu de :'
  subject = gets.chomp.to_s

  puts 'Tac gia :'
  author = gets.chomp.to_s

  puts 'Nha xuat ban :'
  publisher = gets.chomp.to_s

  puts 'Ngay xuat ban :'
  date = gets.chomp.to_s

  puts 'So trang :'
  pages = gets.chomp.to_s

  puts 'So ban copy :'
  copies = gets.chomp.to_s

  new_book = Book.new(isbn, title, subject, author, publisher, date, pages, copies)

  $books_array.push(new_book.to_hash)

  File.open("Books.json", "w+") do |f|
    f.puts($books_array.to_json)
  end
  puts "Da them sach moi thanh cong. Bam ENTER de tiep tuc"
  gets.chomp
end

# Xoa mot hoac nhieu sach duoc chon tu ket qua tim kiem
def book_deleting
  book_seaching
  puts "Nhap index record muon xoa (xoa nhieu record bang cach dung dau cach giua cac index)"
  delete_index = gets.chomp.to_s
  delete_index.split(' ').each {
      |value|
    $books_array.delete_at ($search_result_array[value.to_i - 1].to_i)
  }
  File.open("Books.json", "w+") do |f|
    f.puts($books_array.to_json)
  end
  puts "Lua chon da duoc xoa thanh cong. Bam ENTER de tiep tuc"
  gets.chomp
end

# Ham sua thong tin sach co san (dung chuc nang tim kiem de chon duoc ban ghi muon chinh sua)
def book_editing
  book_seaching
  puts "Nhap index record muon sua"
  edit_index = gets.chomp.to_i
  puts "-------------Nhap thong tin moi---------------"
  puts 'Ma so :'
  isbn = gets.chomp.to_s

  puts 'Ten sach :'
  title = gets.chomp.to_s

  puts 'Chu de :'
  subject = gets.chomp.to_s

  puts 'Tac gia :'
  author = gets.chomp.to_s

  puts 'Nha xuat ban :'
  publisher = gets.chomp.to_s

  puts 'Ngay xuat ban :'
  date = gets.chomp.to_s

  puts 'So trang :'
  pages = gets.chomp.to_s

  puts 'So ban copy :'
  copies = gets.chomp.to_s

  new_book = Book.new(isbn, title, subject, author, publisher, date, pages, copies)

  $books_array[$search_result_array[edit_index-1].to_i] = new_book.to_hash

  File.open("Books.json", "w+") do |f|
    f.puts($books_array.to_json)
  end
  puts "Thong tin sach da duoc update. Bam ENTER de tiep tuc"
  gets.chomp
end

# Them mot nguoi dung moi
def user_adding
  puts 'User ID :'
  userid = gets.chomp.to_s

  puts 'User Name :'
  username = gets.chomp.to_s

  puts 'Password :'
  password = gets.chomp.to_s

  puts 'Level :'
  level = gets.chomp.to_s

  new_user = User.new(userid, username, password, level)

  $user_array.push(new_user.to_hash)

  File.open("Users.json", "w+") do |f|
    f.puts($user_array.to_json)
  end
  puts "Them moi nguoi dung thanh cong. Bam ENTER de tiep tuc"
  gets.chomp
end

# Kiem tra va return level cua user
def check_user
  $user_array.each {
      |value|
    if ((value["username"].to_s == $user_name) && (value["password"].to_s == $pass_word))
      return value["level"].to_s
      break
    end
  }
end

# dang nhap he thong
def login
  puts 'Vui long dang nhap'
  puts 'Username: '
  $user_name = gets.chomp.to_s
  puts 'Password'
  $pass_word = gets.chomp.to_s
end


# Chuong trinh quan li thu vien
def main
  $own_process = check_user
  case $own_process
    when "admin"
      puts "----------------------------------"
      puts "Lua chon chuc nang"
      puts "[1].Tim kiem sach"
      puts "[2].Them mot sach moi"
      puts "[3].Xoa sach trong thu vien"
      puts "[4].Sua thong tin sach"
      puts "[5].Them nguoi dung"
      puts "[6].Quay lai man hinh dang nhap"
      puts "[7].Thoat"

      case gets.chomp.to_i
        when 1
          book_seaching
        when 2
          book_adding
        when 3
          book_deleting
        when 4
          book_editing
        when 5
          user_adding
        when 6
          login
        when 7
          exit
      end
    when "user"
      puts "----------------------------------"
      puts "Lua chon chuc nang"
      puts "[1].Tim kiem sach"
      puts "[2].Quay lai man hinh dang nhap"
      puts "[3].Thoat"
      case gets.chomp.to_i
        when 1
          book_seaching
        when 2
          login
        when 3
          exit
      end
  end
end

# Process loop
while true
  if ($own_process.nil?)
  login
  end
  main
end
