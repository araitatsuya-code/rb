# hash = {name: "Suzuki",height: 1.6,weight: 60,bmi: weight / height * height}

# hashs = {}

# hash[:name] = "Suzuki"
# hash[:height] = 1.6
# hash[:weight] = 60
# hashs:bmi] = 60 / (1.6 * 1.6)

# puts "name：#{hash[:name]}"
# puts "heigt:#{hash[:height]}"
# puts "weight:#{hash[:weight]}"
# puts "bmi:#{hash[:bmi].round(1)}"

hashs = {}

hashs[:name] = "Suzuki"
hashs[:height] = 1.6
hashs[:weight] = 60
hashs[:bmi] = 60 / (1.6 * 1.6)

hashs.each do |key,value|

  puts "#{key}: #{value}"


end

# puts "name：#{hash[:name]}"
# puts "heigt:#{hash[:height]}"
# puts "weight:#{hash[:weight]}"
# puts "bmi:#{hash[:bmi].round(1)}"