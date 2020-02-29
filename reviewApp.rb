def register_book(books)
  # 本の著者、タイトル、価格をユーザーに入力させ、保存する
  puts '著者を入力してください'
  author = gets.chomp
  puts 'タイトルを入力してください'
  title = gets.chomp
  puts '価格を入力してください'
  price = gets.to_i

  book = {author: author,title: title, price: price}

  books << book
end

def show_books(books)
  puts "見たい番号を入力してください"
  puts "平均価格#{average_price(books)}"
  # 保存された本の一覧を出力する
  books.each_with_index do |book, index|
  puts "[#{index + 1}]:#{book[:title]}"
  end
  input = gets.to_i
  show_detail(books[input - 1])
end

def show_detail(book)
  # 選択された本の詳細な情報（著者、タイトル、価格）を出力する
  puts "著者 #{book[:author]}"
  puts "タイトル #{book[:title]}"
  puts "価格 #{book[:price]}円"
end

def average_price(books)
  total = 0
  # 全ての本の平均価格を算出する
  books.each do |book|
    total += book[:price]
  end
  average = total / books.length
end

books = []

while true do
  puts "番号を入力してください"
  puts "0: 本を登録する"
  puts "1: 本の一覧を見る"
  puts "2: 終了する"
  case gets.to_i
  when 0
    # 本の登録を行う
    register_book(books)
  when 1
    # 保存された本の一覧を出力する
    show_books(books)
  when 2
    exit
  else
    puts '無効な値です'
  end
end