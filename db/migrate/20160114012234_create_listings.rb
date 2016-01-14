class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :property_name
      t.integer :price
      t.string :description
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
