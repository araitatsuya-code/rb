def register_data(dates)
  date = {}
  # 名前、パンチ力、キック力、ジャンプ力をユーザーに入力させ、保存する。
  puts "名前を入力してください"
  name = gets.chomp
  puts "パンチ力を入力してください(0 ~ 100)"
  punch = power(gets.to_i)
  puts "キック力を入力してください(0 ~ 100)"
  kick = power(gets.to_i)
  puts "ジャンプ力を入力してください(0 ~ 100)"
  jump = power(gets.to_i)

  date = {name: name, punch: punch, kick: kick, jump: jump,hero_rank: hero_rank(punch,kick,jump)}

dates << date  




end


def power(power)

  # 入力された数字が0~100になるまで繰り返し入力させる。
  while power > 100
    puts "100以下の数字を入力してください"
      power = gets.to_i
  end

  return power
  


end


def hero_rank(punch, kick, jump)
power = (punch + kick + jump)
  if power == 300
    rank = "A"
  elsif power < 300 && power >= 100 
    rank = "B"
  elsif power <100 && power >= 20
    rank = "C"
  else
    rank = "D"
    # ヒーロランクの判定をする。
  end


end


def show_data_list(dates)

   puts "見たい番号を入力してください"
  # 保存されたデータの一覧を出力する。
   dates.each_with_index do |date, index|
   puts "#{index + 1}:#{date[:name]}"
   end  
   input = gets.to_i

  # 選択されたデータの詳細な情報（名前、パンチ力、キック力、ジャンプ力、ヒーロランク）を出力する。
   date = dates[input -1]
   puts "name:#{date[:name]}"
   puts "P:#{date[:punch]}"
   puts "K:#{date[:kick]}"
   puts "J:#{date[:jump]}"
   puts "RA:#{date[:hero_rank]}"

end

dates = []

while true
  puts '選択してください'
  puts '[0]登録する'
  puts '[1]データを確認する'
  puts '[2]終了する'
  input = gets.to_i

  if input == 0
    register_data(dates)
  elsif input == 1
    # 保存されたデータの一覧を表示する。
    show_data_list(dates)
  elsif input == 2
    exit
  else
    puts '無効な値です'
  end
end