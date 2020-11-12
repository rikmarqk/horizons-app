class CreateSongs < ActiveRecord::Migration[6.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.references :artist, null: false, foreign_key: true
      t.integer :bpm, default: 0

      t.timestamps
    end
  end
end
