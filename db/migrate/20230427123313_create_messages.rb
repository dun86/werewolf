class CreateMessages < ActiveRecord::Migration[6.1]
  def change
    create_table :messages do |t|
      t.integer :game_id, null: false
      t.integer :sender_id, null: false
      t.text :content, null: false
      t.timestamps
    end
  end
end
