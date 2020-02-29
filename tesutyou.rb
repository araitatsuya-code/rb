def register_book(books)

  puts '著者を入力してください'
  author = gets.chomp
  puts 'タイトルを入力してください'
  title = gets.chomp

  book = {author: author,title: title}

  books << book
end

def show_books(books)
  puts "キーワードを入力してください"
  input = gets.chomp


end

def show_detail(book)
  # 選択された本の詳細な情報（著者、タイトル、価格）を出力する
  puts "著者 #{book[:author]}"
  puts "タイトル #{book[:title]}"
  puts "________________________"
end

books = []

while true do
  puts "番号を入力してください"
  puts "0: 本を登録する"
  puts "1: 本を検索する"
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