# ①三項演算子とはどのようなものか説明してください。

# 条件演算子(三項演算子とも呼ばれます)は条件式の結果によって異なる値を返す演算子です。
# 条件式 ? 真の時の値 : 偽の時の値

# ②以下の記述を、三項演算子を用いて書き換えてください。

var = "文字列"

# if var.class == String
#   "varはStringです"
# else
#   "varはStringではありません"
# end

var.class == String ? "varはStringです" : "varはStringではありません"