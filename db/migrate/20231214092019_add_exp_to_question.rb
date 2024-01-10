class AddExpToQuestion < ActiveRecord::Migration[7.1]
  def change
      add_column :questions, :exp, :integer
  end
end
