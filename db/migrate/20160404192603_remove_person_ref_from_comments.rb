class RemovePersonRefFromComments < ActiveRecord::Migration
  def change
    remove_column :comments, :person_id
  end
end
