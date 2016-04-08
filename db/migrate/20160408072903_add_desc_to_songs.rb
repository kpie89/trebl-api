class AddDescToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :about, :string
  end
end
