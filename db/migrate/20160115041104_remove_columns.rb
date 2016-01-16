class RemoveColumns < ActiveRecord::Migration
  def self.up
  	remove_column :users, :avatar
  end

  def self.down
  	add_column :users, :image, :string
  end
end
