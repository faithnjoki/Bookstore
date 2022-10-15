class CreateMybooks < ActiveRecord::Migration[7.0]
  def change
    create_table :mybooks do |t|
      t.string :name
      t.string :genre
      t.integer :rating

      t.timestamps
    end
  end
end
