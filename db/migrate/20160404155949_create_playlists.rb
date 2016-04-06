class CreatePlaylists < ActiveRecord::Migration
  def change
    create_table :playlists do |t|
      t.string :title
      t.string :desc
      t.references :person, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
