class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :picture
      t.string :bio
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
