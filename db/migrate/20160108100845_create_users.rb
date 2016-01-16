class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :email
      t.json :avatar

      t.timestamps null: false
    end
  end
end
