class CreateGuesses < ActiveRecord::Migration[5.0]
  def change
    create_table :guesses do |t|
      t.integer  :card_id
      t.integer  :round_id
      t.boolean  :correct, default: false

      t.timestamps null: false
  end
end
