class AddSongRefToPlaylist < ActiveRecord::Migration
  def change
    add_reference :playlists, :song, index: true, foreign_key: true
  end
end
