class CreateWarriors < ActiveRecord::Migration[7.1]
  def change
    create_table :warriors do |t|
      t.string :path
      t.string :gender

      t.timestamps
    end
  end
end
