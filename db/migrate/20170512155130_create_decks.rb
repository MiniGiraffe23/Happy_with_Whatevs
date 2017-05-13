class CreateDecks < ActiveRecord::Migration[5.0]
  def change
    create_table :decks do |t|
      t.string  :topic
      # t.integer :card_total use .count instead
      t.timestamps(null: false)
    end
  end
end
