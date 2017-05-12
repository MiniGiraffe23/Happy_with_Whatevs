class CreateRounds < ActiveRecord::Migration[5.0]
  def change
    create_table :rounds do |t|
      t.references :user
      t.references :deck
      t.timestamps(null: false)
    end
  end
end
