class CreateCards < ActiveRecord::Migration[5.0]
  def change
     create_table :cards do |t|
      t.string  :question
      t.string  :answer
      #t.boolean :viewed, default: false
      # t.string  :correct_guess
      t.integer :deck_id

      t.timestamps null: false
    end
  end
end
