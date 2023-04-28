class CreateVotes < ActiveRecord::Migration[6.1]
  def change
    create_table :votes do |t|
      t.integer :game_id, null: false
      t.integer :voter_id, null: false
      t.integer :target_id, null: false
      t.timestamps
    end
  end
end
