class CreateVenues < ActiveRecord::Migration[5.0]
  def change
    create_table :venues do |t|
      t.references :user, foreign_key: true
      t.string :venue_name
      t.string :address
      t.boolean :wifi
      t.integer :accomodate
      t.text :file

      t.timestamps
    end
  end
end
