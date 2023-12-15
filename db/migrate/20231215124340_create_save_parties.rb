class CreateSaveParties < ActiveRecord::Migration[7.1]
  def change
    create_table :save_parties do |t|
      t.integer :id_user
      t.integer :id_character
      t.integer :stat

      t.timestamps
    end
  end
end
