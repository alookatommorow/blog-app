class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string  :name
      t.belongs_to :user, index: true
      t.integer :likeable_id
      t.string  :likeable_type
      t.timestamps
    end

    add_index :likes, [:likeable_type, :likeable_id]
    add_index :likes, [:user_id, :likeable_id, :likeable_type], unique: true
  end
end