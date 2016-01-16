class CreateListingsTags < ActiveRecord::Migration
  def change
    create_table :listings_tags do |t|
      t.belongs_to :listing, index: true, foreign_key: true
      t.belongs_to :tag, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end