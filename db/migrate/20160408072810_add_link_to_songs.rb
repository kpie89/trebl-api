class AddLinkToSongs < ActiveRecord::Migration
  def change
    add_column :songs, :desc, :string
  end
end
