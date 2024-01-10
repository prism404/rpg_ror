class CreateCharacters < ActiveRecord::Migration[7.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :classe
      t.integer :exp
      t.string :gender
      t.string :image
      t.integer :user_id
      t.index ["user_id"], name: "index_characters_on_user_id"

      t.timestamps
    end
  end
end
