class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.belongs_to :user, index: true
      t.belongs_to :movie, index: true
      t.text :review

      t.timestamps
    end

    add_index :reviews, [:user_id, :movie_id]
  end
end

