class CreateChoices < ActiveRecord::Migration[7.1]
  def change
    create_table :choices do |t|
      t.string :respons
      t.integer :id_question
      t.integer :choice

      t.timestamps
    end
  end
end
