
for i in 1..30
  if i % 15 == 0
    puts "fizz_buzz"
  elsif i % 3 == 0
    puts "fizz"  
  elsif i % 5 == 0
    puts "buzz"
  else
    puts i
  end
end