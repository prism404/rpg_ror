class CreateQuestions < ActiveRecord::Migration[7.1]
  def change
    create_table :questions do |t|
      t.string :question
      t.integer :id_response

      t.timestamps
    end
  end
end
