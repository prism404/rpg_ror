class CreateEnigmas < ActiveRecord::Migration[7.1]
  def change
    create_table :enigmas do |t|
      t.string :question
      t.string :correct_response
      t.string :response1
      t.string :response2
      t.string :response3

      t.timestamps
    end
  end
end
