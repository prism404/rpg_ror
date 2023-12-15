# db/seeds.rb
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

Reward.destroy_all()
sword = Reward.create(
  name: 'Excalibur',
  category: :sword,
  attack: 10,
  defense: 2,
  description: 'A legendary sword that can cut through enemies with ease.'
)

armor = Reward.create(
  name: 'Knight Armor',
  category: :armor,
  attack: 2,
  defense: 10,
  description: 'Durable armor worn by valiant knights, providing excellent defense.'
)

staff = Reward.create(
  name: 'Wizard Staff',
  category: :staff,
  attack: 8,
  defense: 1,
  description: 'A magical staff that amplifies the power of spells and incantations.'
)

shield = Reward.create(
  name: 'Steel Shield',
  category: :shield,
  attack: 1,
  defense: 8,
  description: 'A sturdy shield crafted from steel, offering reliable protection in battle.'
)

Question.destroy_all()
Choice.destroy_all()

puts 'Rewards created!'
