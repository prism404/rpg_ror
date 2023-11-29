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
sword = Reward.create(name: "Sword of Power", description: "A mighty sword", reward_type: "Sword", stat_value: 10)
staff = Reward.create(name: "Frost Staff", description: "It's just a frost staff", reward_type: "Staff", stat_value: 8)
shield = Reward.create(name: "Steel Shield", description: "A sturdy shield", reward_type: "Shield", stat_value: 15)
# Add more rewards as needed
