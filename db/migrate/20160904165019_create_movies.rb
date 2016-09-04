class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :country
      t.integer :runtime
      t.integer :year

      t.timestamps
    end
  end
end
