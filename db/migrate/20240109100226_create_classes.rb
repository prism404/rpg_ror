class CreateClasses < ActiveRecord::Migration[7.1]
  def change
    create_table :classes do |t|
      t.string :category
      t.text :description
      t.integer :hp
      t.integer :attack
      t.integer :defense
      t.timestamps
    end
  end
end
