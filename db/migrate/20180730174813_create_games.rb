class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :playerone
      t.string :playertwo
      t.references :league
      t.timestamps
    end
  end
end
