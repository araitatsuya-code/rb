
# for i in 1..30
#   if i % 15 == 0
#     puts "fizz_buzz"
#   elsif i % 3 == 0
#     puts "fizz"  
#   elsif i % 5 == 0
#     puts "buzz"
#   else
#     puts i
#   end
# end

# (1..30).each do |num|
#   puts case 0
#     when num % 15 then :FizzBuzz
#     when num % 3  then :Fizz
#     when num % 5  then :Buzz
#     else num
#   end
# end

num = 1
while num < 101
  str = ""
  if num % 3 == 0
    str = str + "fizz"
  end

  if num % 5 == 0
    str = str + "buzz"
  end
  if str == ""
    str = str + num.to_s
  end
  puts str
  num += 1
end