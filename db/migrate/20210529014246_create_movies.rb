class CreateMovies < ActiveRecord::Migration[6.1]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :status
      t.string :description
      t.float :rate
      t.string :img

      t.timestamps
    end
  end
end
