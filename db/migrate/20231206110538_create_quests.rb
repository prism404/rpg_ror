class CreateQuests < ActiveRecord::Migration[7.1]
  def change
    create_table :quests do |t|
      t.string :name
      t.text :description
      t.integer :exp
      
      t.references :item_1, foreign_key: { to_table: :items }
      t.references :item_2, foreign_key: { to_table: :items }
      t.references :item_3, foreign_key: { to_table: :items }

      t.timestamps
    end
  end
end
