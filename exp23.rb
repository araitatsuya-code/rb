# 次のwhile文は、変数aに1を足す処理を行います。
# しかしながら、while文を終了する条件が記述されていないため、終了することなく永遠に実行され続けてしまいます。
# コードを修正して、aが100以上の時には処理が終了するようにしてください。

a = 0

while a <= 100 do
 puts a
 a += 1
end

# 文字列を数字に変換するメソッドを答えなさい。また、そのメソッドを用いて、下記の変数strを文字列から数字に変換してください。

str = "1"
str.to_i

# 以下の配列arrayに対してあるメソッドを実行し、最後の値"something"を配列から削除してください。


array = ["dog", "cat", "something"]
# array.delete_at(2)
array.pop