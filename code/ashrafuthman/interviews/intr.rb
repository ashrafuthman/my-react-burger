require 'json'
require 'rest-client'

puts  "Pokemon's ID:"
input = gets.chomp.to_i

url = "https://pokeapi.co/api/v2/pokemon/#{input}"
response = RestClient.get(url)
test_api = JSON.parse(response)

p "What would like to know about this pokemon's ID?"
puts "1.name"
puts "2.type"
puts "3.abilities"
puts "4.Exit"

choice = gets.chomp

unless choice == '4' or choice == 'Exit'
  if choice == '1' or choice == 'name'
    p test_api['name']
  elsif choice == '2' or choice == 'type'
    type = test_api["types"]
    type.each do |ty|
     p ty['type']['name']
    end
  elsif choice == '3' or choice == 'abilities'
    ability = test_api['abilities']
    ability.each do |ass|
        p ass['ability']['name']
     end 
  else
    p "Sorry make sure to choose one of the options about"
  end
end
  
# test_api.each do |tes|
 
# end






































# puts "Please enter you choice \n 1. Rock\n 2. Paper\n 3. Siccor"



# player_choice = gets.chomp.downcase
# until player_choice == 'n'
# computer_choice = ['rock', 'paper', 'siccor'].sample
#   if computer_choice == player_choice
#     p "It's a draw"
#     p "Play again? Y/N"
#     player_choice = gets.chomp
#   elsif (computer_choice == 'rock' && player_choice == 'siccor') || (computer_choice == 'paper' && player_choice == 'rock') || (computer_choice == 'siccor' && player_choice == 'paper')
#     p "You lost!"
#     p "Play again? Y/N"
#     player_choice = gets.chomp
#     elsif (computer_choice == 'paper' && player_choice == 'siccor') || (computer_choice == 'siccor' && player_choice == 'rock') || (computer_choice == 'rock' && player_choice == 'paper')
#     p "You won!"
#     p "Play again? Y/N"
#     player_choice = gets.chomp
#   end
# end











# random_hash = {
#  abc: 'hello',
#   'another_key' => 123,
#    4567 => 'third'
# }

# #hsh = random_hash.keys.map(&:to_s).sort_by(&:length)

# hsh = random_hash.keys.map { |key| key.to_s }

# hsh = hsh.sort_by(&:length)

# p hsh

# def sum(arg1, arg2)
#   p arg1 + arg2
# end

# sum(1, 2)

# def reversed(string)
#  str = string.downcase.split('')
#  reverse = []
#  str.size.times { reverse << str.pop }
#  reverse.join
# end


# p reversed('Holla')

# def revstr(string)
#   str = string.downcase
#   reverse = ''
#   str.each_char { reverse << str.slice!(-1) }
#   reverse
# end

# p revstr('Sand')

