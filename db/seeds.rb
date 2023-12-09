# db/seeds.rb
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

puts 'Rewards created!'
