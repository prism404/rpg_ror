class CreateRewards < ActiveRecord::Migration[7.1]
  def change
    create_table :rewards do |t|
      t.string :name
      t.string :category
      t.integer :attack
      t.integer :defense
      t.text :description

      t.timestamps
    end
  end
end
