class CreateMyreadingbooks < ActiveRecord::Migration[7.0]
  def change
    create_table :myreadingbooks do |t|
      t.string :name
      t.string :author
      t.string :genre
      t.integer :rating

      t.timestamps
    end
  end
end
