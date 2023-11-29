class CreateQuests < ActiveRecord::Migration[7.1]
  def change
    create_table :quests do |t|
      t.string :title
      t.text :description
      t.integer :exp

      t.timestamps
    end

    add_reference :quests, :reward1, foreign_key: { to_table: :rewards }
    add_reference :quests, :reward2, foreign_key: { to_table: :rewards }
    add_reference :quests, :reward3, foreign_key: { to_table: :rewards }
  end
end
