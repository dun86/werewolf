class CreateGames < ActiveRecord::Migration[6.1]
  def change
    create_table :games do |t|
      t.string :title, null: false
      t.integer :daytime, null: false
      t.integer :nighttime, null: false
      t.integer :status, null: false
      t.integer :winner, null: false
      t.timestamps
    end
  end
end
