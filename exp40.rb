# def converting_to_jpy(price)
#   price = price.to_s(:delimited)+"円"
# end

def converting_to_jpy(price)
  "#{price.to_s(:delimited, delimiter: ',')}円"
end