class CreateQuests < ActiveRecord::Migration[7.1]
  def change
    create_table :quests do |t|
      t.string :name
      t.text :description
      t.integer :exp
      
      t.references :reward_1, foreign_key: { to_table: :rewards }
      t.references :reward_2, foreign_key: { to_table: :rewards }
      t.references :reward_3, foreign_key: { to_table: :rewards }

      # Add other columns as needed

      t.timestamps
    end
  end
end
