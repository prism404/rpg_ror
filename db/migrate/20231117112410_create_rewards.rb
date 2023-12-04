class CreateRewards < ActiveRecord::Migration[7.1]
  def change
    create_table :rewards do |t|
      t.string :name
      t.text :description
      t.string :reward_type
      t.integer :stat_value

      t.timestamps
    end
  end
end
