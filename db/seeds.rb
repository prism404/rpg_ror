# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# db/seeds.rb
Reward.destroy_all()
sword = Reward.create!(name: "Sword of Power", description: "A mighty sword", reward_type: "Sword", stat_value: 10)
staff = Reward.create!(name: "Frost Staff", description: "It's just a frost staff", reward_type: "Staff", stat_value: 8)
shield = Reward.create!(name: "Steel Shield", description: "A sturdy shield", reward_type: "Shield", stat_value: 15)
# Add more rewards as needed
Item.destroy_all()
[
    ["Arrow", "Arrow", "weapon", 20],
    ["Axe", "Axe", "weapon", 30],
    ["Book", "Book", "none", 0],
    ["Bow", "Bow", "weapon", 25],
    ["Chest", "Chest", "none", 0],
    ["Coin", "Coin", "none", 0],
    ["Compass", "Compass", "none", 0],
    ["Ingot gold", "Ingot gold", "none", 0],
    ["Ingot silver", "Ingot silver", "none", 0],
    ["Key", "Key", "none", 0],
    ["Pick axe", "Pick axe", "weapon", 15],
    ["Potion01", "Potion de vie", "none", 0],
    ["Potion02", "Potion", "none", 0],
    ["Scroll", "Scroll", "none", 0],
    ["Skull","Skull", "none", 0],
    ["Stick", "Stick", "weapon", 10],
    ["Stone 01", "Orange stone", "none", 0],
    ["Stone 02", "Purple stone", "none", 0],
    ["Sword", "Sword", "weapon", 40],
    ["Wand", "Wand", "weapon", 35]
].each do  |(path, name, categorie, stats)|
    Item.create!(path: path, name: name, categorie: categorie, stats: stats)
end

Inventory.destroy_all()
Item.all().each do |data|
    Inventory.create!(id_user: 1, id_save: 1, id_item: data.id, quantity: 2)
end