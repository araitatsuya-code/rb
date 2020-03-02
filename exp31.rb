# ユーザーに数字を入力してもらい、その数の回数だけHello!と表示させるコードを記述してください。

# puts "数字を入力してください"
# n = gets.to_i

# puts "Hello" * n

# 以下の仕様にしたがってコードを記述してください。

# ・Personクラスはプロパティ name, ageを持っている。
# ・StudentクラスはPersonクラスを継承している。
# ・Studentクラスにはintroduceメソッドが定義されている。実行すると
# 「私の名前は◯◯です。◯歳です」と表示がされる。
# ・Studentクラスのインスタンスを作成し、introduceメソッドを実行する。

class Person
  def initialize(name,age)
    @name = name
    @age = age
  end
end

class Student < Person
  def introduce
    puts "「私の名前は#{@name}です。#{@age}歳です。」"
  end
end

ab = Student.new("takashi",15)
ab.introduce