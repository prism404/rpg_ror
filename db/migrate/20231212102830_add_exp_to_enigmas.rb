class AddExpToEnigmas < ActiveRecord::Migration[7.1]
  def change
    add_column :enigmas, :exp, :integer
  end
end
