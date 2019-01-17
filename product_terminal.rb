require 'http'

# puts "Please enter an item number (choose from 1-4)"

# number = gets.chomp.to_i - 1

# response = HTTP.get("http://localhost:3000/api/products")


# puts JSON.pretty_generate(response.parse[number]["name"])

puts "Please enter an item name:"

item_name = gets.chomp

response = HTTP.get("http://localhost:3000/api/products")

if item_name == "fan brush"
  puts JSON.pretty_generate(response.parse[0])
elsif item_name == "canvas"
  puts JSON.pretty_generate(response.parse[3])
elsif item_name == "phthalo blue"
  puts JSON.pretty_generate(response.parse[1])
elsif item_name == "palette knife"
  puts JSON.pretty_generate(response.parse[2])
else
  puts "There is no item with that name. Try: fan brush, canvas, phthalo blue, or palette knife."
end


  
  