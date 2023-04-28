class CreatePlayers < ActiveRecord::Migration[6.1]
  def change
    create_table :players do |t|
      t.integer :game_id, null: false
      t.integer :user_id, null:false
      t.integer :number, null:false
      t.timestamps
    end
  end
end
