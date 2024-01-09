Item.destroy_all
User.destroy_all
Choice.destroy_all
Question.destroy_all
Inventory.destroy_all
Classe.destroy_all
Warrior.destroy_all
Mage.destroy_all
Archer.destroy_all

[
  ["Arrow", "Arrow", "weapon", "Forged by the ancient Elven archers, known for their unerring accuracy", 20],
  ["Axe", "Axe", "weapon", "A battle-worn axe, rumored to have cleaved through the shields of giants", 30],
  ["Book", "Book", "knowledge", "A tome filled with arcane knowledge, its pages whisper secrets of the old world", 5],
  ["Bow", "Bow", "weapon", "Crafted from the sacred Yew tree, it hums with a power as old as time", 25],
  ["Chest", "Chest", "container", "An ornate chest, said to hold treasures from the lost city of Atlantis", 10],
  ["Coin", "Coin", "currency", "These ancient coins are still accepted in forgotten markets hidden in the shadows", 15],
  ["Compass", "Compass", "navigationalTool", "Points not just north, but to one's destiny, as per the legend of Captain Ahab", 26],
  ["Ingot gold", "gold", "resource", "Gleaming gold, rumored to be from the secret mines of King Midas", 50],
  ["Ingot silver", "silver", "resource", "Silver ingots cursed by the moon, they say werewolves fear its touch", 30],
  ["Key", "Key", "mysticalTool", "An ancient key, believed to unlock doors to other realms", 60],
  ["Pick axe", "Pickaxe", "tool", "Used by the dwarven miners in the depths of the Undermountain", 15],
  ["Vitality Elixir", "Healing Potion", "potion", "A rare potion brewed by the High Alchemists, capable of healing the gravest wounds", 40],
  ["Toxic Tincture", "Poison Potion", "potion", "This potion's existence is shrouded in mystery and whispered in hushed tones among those who dare to deal in dark magic", 50],
  ["Scroll", "Ancient Scroll", "knowledge", "Bears prophecies of old, scribed by the Oracle of Delphi", 25],
  ["Skull", "Cursed Skull", "artifact", "An ominous skull, said to be the remains of a forgotten dark sorcerer", 55],
  ["Stick", "Magic Stick", "weapon", "A seemingly ordinary stick, but in the right hands, it can summon wonders", 10],
  ["Nebula Amethyst", "Moon Stone", "gemstone", "A stone that radiates red like the blood of old gods, worshipped by the Scarlet cults", 100],
  ["Scarlet Heartstone", "Sun Stone", "gemstone", "Glowing softly in moonlight, it's believed to hold the essence of the moon goddess Amethyst", 120],
  ["Sword", "Sword of Kings", "weapon", "Once wielded by a legendary king, it's as sharp as the day it was forged", 40],
  ["Wand", "Elder Wand", "weapon", "An ancient wand that chooses its master, pulsating with a mysterious energy", 35]
].each do |(path, name, category, description, stats)|
    Item.create!(path: path, name: name, categorie: category, description: description, stats: stats)
end

Item.all().each do |data|
    Inventory.create!(id_user: 1, id_save: 1, id_item: data.id, quantity: 2)
end

[
  ["Warrior", "A brave warrior adorned in heavy armor, wielding a mighty sword", 100, 20, 30],
  ["Mage", "A wise sorcerer with knowledge of ancient spells and mystical arts", 100, 20, 15],
  ["Archer", "A stealthy marksman skilled in taking down enemies from a distance", 100, 20, 10]
].each do |(category, description, hp, attack, defense)|
  Classe.create!(category: category, description: description, hp: hp, attack: attack, defense: defense)
end

# Seeding Warriors
[
  ["male_warrior1", "male"],
  ["male_warrior2", "male"],
  ["male_warrior3", "male"],
  ["male_warrior4", "male"],

  ["female_warrior1", "female"],
  ["female_warrior2", "female"],
  ["female_warrior3", "female"],
  ["female_warrior4", "female"],

].each do |(path, gender, type)|
  Warrior.create!(path: path, gender: gender)
end

# Seeding Mages
[
  ["male_mage1", "male"],
  ["male_mage2", "male"],
  ["male_mage3", "male"],
  ["male_mage4", "male"],

  ["female_mage1", "female"],
  ["female_mage2", "female"],
  ["female_mage3", "female"],
  ["female_mage4", "female"],

].each do |(path, gender)|
  Mage.create!(path: path, gender: gender)
end

# Seeding Archers
[
  ["male_archer1", "male"],
  ["male_archer2", "male"],
  ["male_archer3", "male"],
  ["male_archer4", "male"],

  ["female_archer1", "female"],
  ["female_archer2", "female"],
  ["female_archer3", "female"],
  ["female_archer4", "female"],

].each do |(path, gender)|
  Archer.create!(path: path, gender: gender)
end

puts 'Rewards created!'
