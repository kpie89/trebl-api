class AddSongRefToComments < ActiveRecord::Migration
  def change
    add_reference :comments, :song, index: true, foreign_key: true
  end
end
