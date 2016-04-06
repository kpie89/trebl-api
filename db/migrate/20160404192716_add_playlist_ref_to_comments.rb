class AddPlaylistRefToComments < ActiveRecord::Migration
  def change
   add_reference :comments, :playlist, index: true, foreign_key: true
  end
end
