class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :name
      t.string :path
      t.string :categorie
      t.text :description
      t.integer :stats

      t.timestamps
    end
  end
end
