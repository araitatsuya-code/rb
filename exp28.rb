# 同じ結果を得るためにも、様々なコードの記述方法があります。
# 以下のコードをワンライナーに書き換える方法について、２パターン以上のコードを記述してください。

# array = [1, 2, 3, 4, 5].map do |el| 
#   if el.odd?
#     el 
#   end
# end.compact!

array = [1, 2, 3, 4, 5].map { |el| el if el.odd? }.compact!
array = (1..5).to_a.delete_if { |el| el.even? }
array = (1..5).to_a.delete_if(&:even?)
array = [1, 2, 3, 4, 5].select{ |el| el.odd?}

# select {|item| ... } -> [object]
# 各要素に対してブロックを評価した値が真であった要素を全て含む配列を返します。真になる要素がひとつもなかった場合は空の配列を返します。
# ブロックを省略した場合は、各要素に対しブロックを評価し真になった値の配列を返すような Enumerator を返します。

# delete_if {|x| ... }
# 要素を順番にブロックに渡して評価し、その結果が真になった要素をすべて削除します。 