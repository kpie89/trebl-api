class RemovePersonRefFromPlaylist < ActiveRecord::Migration
  def change
    remove_column :playlists, :person_id
  end
end
