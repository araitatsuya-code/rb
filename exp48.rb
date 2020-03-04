class Impression < ActiveRecord::Base
  VALID_YOUTUBE_URL_REGEX = /\A.* YOUTUBE. *\z/
  validates :url, presence: true, format: { with: VALID_YOUTUBE_URL_REGEX }
end

# 2行目のvalidationを完成させてください。ただし条件は、
# 「youtube」という文字が投稿された文字列に含まれていることを確かめることとします。

